import 'package:cvio/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('dashboard shows export entry without the removed menu', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
    expect(find.text('ダッシュボード'), findsOneWidget);
    expect(find.text('エクスポート'), findsOneWidget);
    expect(find.byIcon(Icons.menu), findsNothing);
  });
}
