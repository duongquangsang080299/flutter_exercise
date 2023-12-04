import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soccer_club_app/presentations/widgets/input.dart';

void main() {
  /// Case one: Enter a valid username.
  testWidgets('Enter a valid username', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SCInput.username(
            labelText: 'Username',
            onChanged: (value) {},
          ),
        ),
      ),
    );

    /// Enter a valid username
    await tester.enterText(find.byType(TextFormField), 'valid_username');

    /// Trigger a frame to rebuild the widget with the new text
    await tester.pump();
    expect(find.text('Invalid username'), findsNothing);
  });

  /// Case two : Enter an invalid username.
  testWidgets('Invalid username entered (subject to validation rules)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SCInput.username(
            labelText: 'Username',
            onChanged: (value) {},
          ),
        ),
      ),
    );

    // Enter an invalid username in the TextFormField
    await tester.enterText(find.byType(TextFormField), 'short');
    // Trigger a frame to rebuild the widget with the new text
    await tester.pump();
  });

  /// Case three: Enter a valid email.
  testWidgets('Enter a valid email', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SCInput.email(
            labelText: 'Email',
            onChanged: (value) {},
          ),
        ),
      ),
    );

    // Enter a valid email in the TextFormField
    await tester.enterText(find.byType(TextFormField), 'valid@example.com');
    // Trigger a frame to rebuild the widget with the new text
    await tester.pump();
    expect(find.text('Email is required'), findsNothing);
  });

  /// Case four : Enter an invalid email
  testWidgets('Invalid email entered (subject to validation rules)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SCInput.email(
            labelText: 'Email',
            onChanged: (value) {},
          ),
        ),
      ),
    );

    // Enter an invalid email
    await tester.enterText(find.byType(TextFormField), 'invalid-email');

    // Trigger a frame to rebuild the widget with the new text
    await tester.pump();
  });

  /// Case five: Enter a valid password.
  testWidgets('Enter a valid password', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SCInput.password(
            labelText: 'Password',
            onChanged: (value) {},
          ),
        ),
      ),
    );

    // Enter a valid password
    await tester.enterText(find.byType(TextFormField), 'Valid@123');

    // Trigger a frame to rebuild the widget with the new text
    await tester.pump();

    expect(find.text('Password is required'), findsNothing);
  });

  /// Case six : Enter an invalid password
  testWidgets('Invalid password entered (subject to validation rules)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SCInput.password(
            labelText: 'Password',
            onChanged: (value) {},
          ),
        ),
      ),
    );

    // Enter an invalid password in the TextFormField
    await tester.enterText(find.byType(TextFormField), 'weakpassword');

    // Trigger a frame to rebuild the widget with the new text
    await tester.pump();
  });
}
