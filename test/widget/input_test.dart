import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soccer_club_app/presentations/pages/auth/sign_in/sign_in.dart';
import 'package:soccer_club_app/presentations/widgets/input.dart'; // Replace with the actual import path

void main() {
  group('SignInPage Widget Tests', () {
    testWidgets('Widgets render on the sign-in page',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(home: SignInPage()));

      // Verify that the widgets are rendered.
      expect(find.text('Sign In'), findsOneWidget);
      expect(
          find.byType(SCInput),
          findsNWidgets(
              3)); // Assuming 3 SCInput widgets for username, email, and password.
      expect(find.text('Sign In'), findsOneWidget);
    });
  });
}
