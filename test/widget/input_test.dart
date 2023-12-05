import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soccer_club_app/presentations/widgets/input.dart';

void main() {
  /// Test case: Input a valid username.
  testWidgets('Input a valid username', (WidgetTester tester) async {
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

    /// Input a valid username
    await tester.enterText(find.byType(TextFormField), 'valid username');

    await tester.pump();
    expect(find.text('Invalid username'), findsNothing);
  });

  /// Test case: Input an invalid username.
  testWidgets('Invalid username entered (based validation rules)',
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

    // Input an invalid username in the TextFormField
    await tester.enterText(find.byType(TextFormField), 'short');
    await tester.pump();
  });

  /// Test case: Empty intput of username
  testWidgets('Username input validation - Empty intput of username',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SCInput.username(),
        ),
      ),
    );

    final usernameInput = find.byType(TextFormField);

    await tester.enterText(usernameInput, '');

    await tester.pump();

    final errorTextFinder = find.text('');

    expect(errorTextFinder, findsOneWidget);
  });

  /// Test case: Input a valid email.
  testWidgets('Input a valid email', (WidgetTester tester) async {
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

    // Input a valid email
    await tester.enterText(find.byType(TextFormField), 'valid@example.com');
    await tester.pump();
    expect(find.text('Email is required'), findsNothing);
  });

  /// Test case: Input an invalid email
  testWidgets('Invalid email entered (based validation rules)',
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

    // Input an invalid email
    await tester.enterText(find.byType(TextFormField), 'invalid-email');
    await tester.pump();
  });

  testWidgets('Email input validation - Empty intput of email',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SCInput.email(),
        ),
      ),
    );

    final emailInput = find.byType(TextFormField);

    await tester.enterText(emailInput, '');

    await tester.pump();

    final errorTextFinder = find.text('');

    expect(errorTextFinder, findsOneWidget);
  });

  /// Test case: Input a valid password.
  testWidgets('Input a valid password', (WidgetTester tester) async {
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

    // Input a valid password
    await tester.enterText(find.byType(TextFormField), 'Valid@123');
    await tester.pump();

    expect(find.text('Password is required'), findsNothing);
  });

  /// Test case: Input an invalid password
  testWidgets('Invalid password entered (based validation rules)',
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

    // Input an invalid password in the TextFormField
    await tester.enterText(find.byType(TextFormField), 'weakpassword');
    await tester.pump();
  });

  /// Test case: Empty intput of email

  /// Test case: Empty intput of password
  testWidgets('Password input validation - Empty intput of password',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SCInput.password(),
        ),
      ),
    );

    final passwordInput = find.byType(TextFormField);

    await tester.enterText(passwordInput, '');

    await tester.pump();

    final errorTextFinder = find.text('');

    expect(errorTextFinder, findsOneWidget);
  });
}
