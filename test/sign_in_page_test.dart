import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soccer_club_app/presentations/pages/auth/sign_in/sign_in.dart';

void main() {
  group('SignInPage', () {
    testWidgets('Email input validation', (WidgetTester tester) async {
      try {
        // Build our app and trigger a frame.
        await tester.pumpWidget(const MaterialApp(
          home: SignInPage(),
        ));

        // Find the email input field by its key
        final emailInput = find.byKey(Key('_emailInputKey'));

        // Print information for debugging
        print('Before entering text: ${tester.widget(emailInput)}');

        // Test case 1: Valid email
        await tester.enterText(emailInput, 'valid@email.com');
        await tester.pump(); // Ensure widget rebuilds

        // Print information for debugging
        print('After entering valid text: ${tester.widget(emailInput)}');

        expect(find.text('Enter a valid email address'), findsNothing);

        // Test case 2: Invalid email
        await tester.enterText(emailInput, 'invalid-email');
        await tester.pump(); // Ensure widget rebuilds

        // Print information for debugging
        print('After entering invalid text: ${tester.widget(emailInput)}');

        expect(find.text('Enter a valid email address'), findsOneWidget);
      } catch (e, stackTrace) {
        print('Test failed: $e');
        print('Stack trace: $stackTrace');
        rethrow;
      }
    });
  });
}
