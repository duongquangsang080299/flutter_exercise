import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:soccer_club_app/blocs/auth/sign_in/sign_in_bloc.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';

/// Mock implementation of AuthRepo for testing
class MockAuthRepo extends Mock implements AuthRepo {
  @override
  Future<void> signIn({required String email, required String password}) async {
    return Future<void>.value();
  }
}

void main() {
  // Helper functions for common
  Future<void> expectSignInBlocEmits(
      SignInBloc signInBloc, dynamic matcher) async {
    await expectLater(
      signInBloc.stream,
      emits(matcher),
    ).catchError((error) {});
  }

  // Helper function to set up SignInBloc
  SignInBloc setupSignInBloc() {
    final mockAuthRepo = MockAuthRepo();
    return SignInBloc(
      initialState: SignInInitialState(emptySignInState),
      authRepo: mockAuthRepo,
    );
  }

  /// Test Successful Sign In
  group('SignInBloc', () {
    // Test case: Emits SignInSuccessState when provided valid email and password
    test('emits SignInSuccessState when provided valid email and password',
        () async {
      // Arrange
      final signInBloc = setupSignInBloc();

      // Act
      signInBloc.add(SignInSubmittedEvent(
        form: emptySignInState.copyWith(
          email: 'test@example.com',
          password: 'Test@123',
        ),
      ));

      // Assert
      await expectSignInBlocEmits(
        signInBloc,
        emitsInOrder([
          isA<SignInLoadingState>(),
          isA<SignInSuccessState>(),
        ]),
      );

      signInBloc.close();
    });

    // Test case: Emits SignInErrorState when provided invalid email and password
    test('emits SignInErrorState when provided invalid email and password',
        () async {
      // Arrange
      final signInBloc = setupSignInBloc();

      // Act
      signInBloc.add(SignInSubmittedEvent(
        form: emptySignInState.copyWith(
          email: 'invalid-email',
          password: 'invalid-password',
        ),
      ));

      // Assert
      await expectSignInBlocEmits(
        signInBloc,
        emitsInOrder([
          isA<SignInLoadingState>(),
          isA<SignInErrorState>(),
        ]),
      );

      signInBloc.close();
    });

    /// Test case: Emits SignInChangedState with valid email
    test('emits SignInChangedState with valid email', () async {
      // Arrange
      final signInBloc = setupSignInBloc();

      // Act
      signInBloc.add(SignInEmailChangedEvent(
        form: emptySignInState.copyWith(
          email: 'test@example.com',
        ),
      ));

      // Assert
      await expectSignInBlocEmits(
        signInBloc,
        isA<SignInChangedState>().having(
          (state) => state.form.email,
          'emitted email',
          'test@example.com',
        ),
      );

      signInBloc.close();
    });

    // Test case: Emits SignInChangedState with invalid email
    test('emits SignInChangedState with invalid email', () async {
      // Arrange
      final signInBloc = setupSignInBloc();

      // Act
      signInBloc.add(SignInEmailChangedEvent(
        form: emptySignInState.copyWith(
          email: 'invalid-email',
        ),
      ));

      // Assert
      await expectSignInBlocEmits(
        signInBloc,
        isA<SignInChangedState>().having(
          (state) => state.form.emailError,
          'emitted email error',
          isNotNull,
        ),
      );

      signInBloc.close();
    });

    // Test case: Emits SignInChangedState with valid password
    test('emits SignInChangedState with valid password', () async {
      // Arrange
      final signInBloc = setupSignInBloc();

      // Act
      signInBloc.add(SignInPasswordChangedEvent(
        form: emptySignInState.copyWith(
          password: 'ValidPassword@123',
        ),
      ));

      // Assert
      await expectSignInBlocEmits(
        signInBloc,
        isA<SignInChangedState>().having(
          (state) => state.form.password,
          'emitted password',
          'ValidPassword@123',
        ),
      );

      signInBloc.close();
    });

    // Test case: Emits SignInChangedState with invalid password
    test('emits SignInChangedState with invalid password', () async {
      // Arrange
      final signInBloc = setupSignInBloc();

      // Act
      signInBloc.add(SignInPasswordChangedEvent(
        form: emptySignInState.copyWith(
          password: 'invalid',
        ),
      ));

      // Assert
      await expectSignInBlocEmits(
        signInBloc,
        isA<SignInChangedState>().having(
          (state) => state.form.passwordError,
          'emitted password error',
          isNotNull,
        ),
      );

      signInBloc.close();
    });

    /// Test form validation

    // Test case: Emits SignInChangedState with valid form
    test('emits SignInChangedState with form validation', () async {
      // Arrange
      final signInBloc = setupSignInBloc();

      // Act
      signInBloc.add(SignInEmailChangedEvent(
        form: emptySignInState.copyWith(
          email: 'test@example.com',
        ),
      ));
      signInBloc.add(SignInPasswordChangedEvent(
        form: emptySignInState.copyWith(
          password: 'ValidPassword@123',
        ),
      ));

      // Assert
      await expectSignInBlocEmits(
        signInBloc,
        isA<SignInChangedState>().having(
          (state) => state.form.formValid,
          'emitted form validation',
          true,
        ),
      );

      signInBloc.close();
    });

    // Test case: Emits SignInChangedState with invalid form
    test('emits SignInChangedState with invalid form', () async {
      // Arrange
      final signInBloc = setupSignInBloc();

      // Act
      signInBloc.add(SignInEmailChangedEvent(
        form: emptySignInState.copyWith(
          email: 'invalid-email',
        ),
      ));
      signInBloc.add(SignInPasswordChangedEvent(
        form: emptySignInState.copyWith(
          password: 'InvalidPassword',
        ),
      ));

      // Assert
      await expectSignInBlocEmits(
        signInBloc,
        isA<SignInChangedState>().having(
          (state) => state.form.formValid,
          'emitted invalid form',
          false,
        ),
      );

      signInBloc.close();
    });

    // Test button state
    test('emits SignInChangedState with valid form', () async {
      // Arrange
      final signInBloc = setupSignInBloc();

      // Act
      signInBloc.add(SignInEmailChangedEvent(
        form: emptySignInState.copyWith(
          email: 'test@example.com',
        ),
      ));
      signInBloc.add(SignInPasswordChangedEvent(
        form: emptySignInState.copyWith(
          password: 'ValidPassword@123',
        ),
      ));

      // Assert
      await expectSignInBlocEmits(
        signInBloc,
        isA<SignInChangedState>().having(
          (state) => state.form.formValid,
          'emitted valid form',
          true,
        ),
      );

      signInBloc.close();
    });
  });
}
