import 'dart:io';

import 'package:cvio/screens/export_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

void main() {
  late Directory directory;
  late Box<String> settings;
  setUp(() async {
    directory = await Directory.systemTemp.createTemp('cvio-export-ui-');
    Hive.init(directory.path);
    settings = await Hive.openBox<String>('drive_export_settings');
    await settings.put('destination_url', 'https://drive.google.com/drive/folders/saved-folder');
  });
  tearDown(() async {
    await Hive.close();
    await directory.delete(recursive: true);
  });

  testWidgets('requires a recording and restores the saved destination', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ExportScreen()));
    await tester.pumpAndSettle();
    expect(find.text('通話音声メモの準備'), findsOneWidget);
    expect(find.text('Googleアカウント未接続'), findsOneWidget);
    expect(find.text('https://drive.google.com/drive/folders/saved-folder'), findsOneWidget);
    final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
    expect(button.onPressed, isNull);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
