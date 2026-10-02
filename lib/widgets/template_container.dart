import 'package:cvio/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../utils/app_space.dart';
import 'app_border.dart';
import 'package:flutter/material.dart';

import '../utils/app_space.dart';

class TemplateContainer extends StatefulWidget {
  final String title;
  final String? initialValue;
  final String hintText;
  final List<String> templates;
  final ValueChanged<String> onChanged;

  const TemplateContainer({
    Key? key,
    required this.title,
    required this.initialValue,
    required this.hintText,
    required this.templates,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<TemplateContainer> createState() => _TemplateContainerState();
}

class _TemplateContainerState extends State<TemplateContainer> {
  /// テキスト入力コントローラ
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    // initialValue をコントローラに反映
    _controller = TextEditingController(text: widget.initialValue ?? '');
  }

  /// 親から [widget.initialValue] が変わった場合に呼ばれる
  @override
  void didUpdateWidget(covariant TemplateContainer oldWidget) {
    super.didUpdateWidget(oldWidget);

    // 1) 親WidgetのinitialValue自体が変わったか
    // 2) かつ現在コントローラのテキストと違う場合のみ再設定
    final newVal = widget.initialValue ?? '';
    if (oldWidget.initialValue != widget.initialValue &&
        _controller.text != newVal) {
      // 変換中などの誤作動防止のため、selectionなどを一度リセット
      final newSelection = TextSelection.collapsed(offset: newVal.length);
      _controller.value = _controller.value.copyWith(
        text: newVal,
        selection: newSelection,
        composing: TextRange.empty, // 入力途中の変換状態をリセット
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpace.pM,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: AppSpace.plM,
                child: Text(
                  widget.title,
                  style: AppTextStyle.sectionTitle,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () => _pickTemplate(context),
                child: Text(
                  'テンプレートを選択',
                  style: AppTextStyle.bodyPrimary,
                ),
              ),
            ],
          ),
          AppSpace.hS,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white10,
            ),
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: widget.hintText,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        maxLines: null,
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        onChanged: widget.onChanged,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    AppSpace.wM,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _pickTemplate(BuildContext context) async {
    final picked = await showDialog<String>(
      context: context,
      builder: (ctx) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'テンプレートを選択',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const AppBorder(),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < widget.templates.length; ++i) ...[
                      SimpleDialogOption(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        onPressed: () =>
                            Navigator.pop(ctx, widget.templates[i]),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.templates[i]),
                        ),
                      ),
                      if (i != widget.templates.length - 1) const AppBorder(),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    if (picked != null) {
      _controller.text = picked;
      widget.onChanged(picked);
    }
  }
}
