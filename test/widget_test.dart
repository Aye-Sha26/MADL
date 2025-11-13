import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:your_app_name/main.dart'; // replace with your actual package name

void main() {
  testWidgets('Main app shows Hello text', (WidgetTester tester) async {
    // Build the app from main.dart
    await tester.pumpWidget(const MyApp());

    // Wait for the widget tree to settle
    await tester.pumpAndSettle();

    // Verify the Text widget exists
    expect(find.text('Hello'), findsOneWidget);
  });
}
