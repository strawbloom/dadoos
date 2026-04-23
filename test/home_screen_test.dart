import 'package:dadoos/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('HomeScreen renders dice and roll button', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: HomeScreen())),
    );

    expect(find.text('click here to roll the dice!'), findsOneWidget);
    // Two dice images + the text button = 3 TextButtons.
    expect(find.byType(TextButton), findsNWidgets(3));
    expect(find.byType(Image), findsNWidgets(2));
  });

  testWidgets('Tapping the roll button starts and finishes an animation',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: HomeScreen())),
    );

    await tester.tap(find.text('click here to roll the dice!'));
    await tester.pump(); // start animation
    await tester.pumpAndSettle(); // run to completion

    // Still rendered after the roll completes.
    expect(find.byType(Image), findsNWidgets(2));
  });
}
