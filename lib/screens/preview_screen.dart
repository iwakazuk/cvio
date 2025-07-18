import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../models/history.dart';
import '../models/personal_info.dart';
import '../models/resume.dart';
import '../provider/history_provider.dart';
import '../provider/personal_info_provider.dart';
import '../provider/preview_provider.dart';
import '../provider/resume_provider.dart';
import '../utils/app_space.dart';
import '../utils/app_text_style.dart';
import '../utils/helper.dart';

class PreviewScreen extends HookConsumerWidget {
  final String resumeKey;

  const PreviewScreen({
    Key? key,
    required this.resumeKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pdfViewController = useMemoized(() => Completer<PDFViewController>());
    final isReady = useState(false);
    final isLoading = useState(true);
    final totalPages = useState(0);
    final currentPage = useState(0);
    final pdfFilePath = useState<String?>(null);

    final personalInfoNotifier = ref.read(personalInfoProvider.notifier);
    final historyNotifier = ref.read(historyProvider.notifier);
    final resumeNotifier = ref.read(resumeProvider(resumeKey).notifier);
    final resume = ref.watch(resumeProvider(resumeKey));

    // PDFファイルを取得（resumeKeyに応じて取得ロジックを実装）
    useEffect(() {
      isLoading.value = true;
      Future(() async {
        final result = await Future.wait<void>([
          historyNotifier.loadFromDb(),
          personalInfoNotifier.loadFromDb(),
          resumeNotifier.loadFromDb(resumeKey),
        ]);
        final file = await fillTemplatePdf(
          personalInfo: result[1] as PersonalInfo,
          resume: result[2] as Resume,
          history: result[0] as History,
        );
        pdfFilePath.value = file.path;
      }).then((_) {
        isLoading.value = false;
      }).catchError((error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('PDF生成に失敗しました: $error')),
        );
        Navigator.pop(context);
      });
      return null;
    }, []);

    if (isLoading.value) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(resume.title ?? "プレビュー", style: AppTextStyle.header),
        actions: [
          Padding(
            padding: AppSpace.pxS,
            child: IconButton(
              icon: const Icon(Icons.share),
              onPressed: () => _onSharePdf(context, pdfFilePath.value!),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          PDFView(
            filePath: pdfFilePath.value,
            enableSwipe: true,
            swipeHorizontal: false,
            onRender: (pages) {
              isReady.value = true;
              totalPages.value = pages ?? 0;
            },
            onViewCreated: (controller) {
              pdfViewController.complete(controller);
            },
            onPageChanged: (page, total) {
              currentPage.value = page ?? 0;
            },
          ),
          if (!isReady.value) const Center(child: CircularProgressIndicator()),
        ],
      ),
      bottomNavigationBar: isReady.value
          ? BottomAppBar(
              child: SizedBox(
                height: kToolbarHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left),
                      onPressed: () async {
                        final controller = await pdfViewController.future;
                        if (currentPage.value > 0) {
                          await controller.setPage(currentPage.value - 1);
                        }
                      },
                    ),
                    Text('${currentPage.value + 1} / ${totalPages.value}'),
                    IconButton(
                      icon: const Icon(Icons.chevron_right),
                      onPressed: () async {
                        final controller = await pdfViewController.future;
                        if (currentPage.value < totalPages.value - 1) {
                          await controller.setPage(currentPage.value + 1);
                        }
                      },
                    ),
                  ],
                ),
              ),
            )
          : null,
    );
  }

  Future<void> _onSharePdf(BuildContext context, String path) async {
    try {
      await Share.shareXFiles(
        [XFile(path)],
        text: '履歴書PDFを共有します',
        subject: '履歴書PDF',
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('共有に失敗: $e')),
      );
    }
  }
}
