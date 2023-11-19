// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInFormModel _$SignInFormModelFromJson(Map<String, dynamic> json) {
  return _SignInFormModel.fromJson(json);
}

/// @nodoc
mixin _$SignInFormModel {
  String get emailError => throw _privateConstructorUsedError;
  String get passwordError => throw _privateConstructorUsedError;
  bool get emailValid => throw _privateConstructorUsedError;
  bool get passwordValid => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @GlobalKeyConverter()
  GlobalKey<FormState>? get formKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInFormModelCopyWith<SignInFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormModelCopyWith<$Res> {
  factory $SignInFormModelCopyWith(
          SignInFormModel value, $Res Function(SignInFormModel) then) =
      _$SignInFormModelCopyWithImpl<$Res, SignInFormModel>;
  @useResult
  $Res call(
      {String emailError,
      String passwordError,
      bool emailValid,
      bool passwordValid,
      bool isValid,
      String email,
      String password,
      @GlobalKeyConverter() GlobalKey<FormState>? formKey});
}

/// @nodoc
class _$SignInFormModelCopyWithImpl<$Res, $Val extends SignInFormModel>
    implements $SignInFormModelCopyWith<$Res> {
  _$SignInFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = null,
    Object? passwordError = null,
    Object? emailValid = null,
    Object? passwordValid = null,
    Object? isValid = null,
    Object? email = null,
    Object? password = null,
    Object? formKey = freezed,
  }) {
    return _then(_value.copyWith(
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String,
      emailValid: null == emailValid
          ? _value.emailValid
          : emailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordValid: null == passwordValid
          ? _value.passwordValid
          : passwordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInFormModelImplCopyWith<$Res>
    implements $SignInFormModelCopyWith<$Res> {
  factory _$$SignInFormModelImplCopyWith(_$SignInFormModelImpl value,
          $Res Function(_$SignInFormModelImpl) then) =
      __$$SignInFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String emailError,
      String passwordError,
      bool emailValid,
      bool passwordValid,
      bool isValid,
      String email,
      String password,
      @GlobalKeyConverter() GlobalKey<FormState>? formKey});
}

/// @nodoc
class __$$SignInFormModelImplCopyWithImpl<$Res>
    extends _$SignInFormModelCopyWithImpl<$Res, _$SignInFormModelImpl>
    implements _$$SignInFormModelImplCopyWith<$Res> {
  __$$SignInFormModelImplCopyWithImpl(
      _$SignInFormModelImpl _value, $Res Function(_$SignInFormModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = null,
    Object? passwordError = null,
    Object? emailValid = null,
    Object? passwordValid = null,
    Object? isValid = null,
    Object? email = null,
    Object? password = null,
    Object? formKey = freezed,
  }) {
    return _then(_$SignInFormModelImpl(
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String,
      emailValid: null == emailValid
          ? _value.emailValid
          : emailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordValid: null == passwordValid
          ? _value.passwordValid
          : passwordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SignInFormModelImpl implements _SignInFormModel {
  const _$SignInFormModelImpl(
      {required this.emailError,
      required this.passwordError,
      required this.emailValid,
      required this.passwordValid,
      required this.isValid,
      required this.email,
      required this.password,
      @GlobalKeyConverter() this.formKey});

  factory _$SignInFormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInFormModelImplFromJson(json);

  @override
  final String emailError;
  @override
  final String passwordError;
  @override
  final bool emailValid;
  @override
  final bool passwordValid;
  @override
  final bool isValid;
  @override
  final String email;
  @override
  final String password;
  @override
  @GlobalKeyConverter()
  final GlobalKey<FormState>? formKey;

  @override
  String toString() {
    return 'SignInFormModel(emailError: $emailError, passwordError: $passwordError, emailValid: $emailValid, passwordValid: $passwordValid, isValid: $isValid, email: $email, password: $password, formKey: $formKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormModelImpl &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.emailValid, emailValid) ||
                other.emailValid == emailValid) &&
            (identical(other.passwordValid, passwordValid) ||
                other.passwordValid == passwordValid) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, emailError, passwordError,
      emailValid, passwordValid, isValid, email, password, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFormModelImplCopyWith<_$SignInFormModelImpl> get copyWith =>
      __$$SignInFormModelImplCopyWithImpl<_$SignInFormModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInFormModelImplToJson(
      this,
    );
  }
}

abstract class _SignInFormModel implements SignInFormModel {
  const factory _SignInFormModel(
          {required final String emailError,
          required final String passwordError,
          required final bool emailValid,
          required final bool passwordValid,
          required final bool isValid,
          required final String email,
          required final String password,
          @GlobalKeyConverter() final GlobalKey<FormState>? formKey}) =
      _$SignInFormModelImpl;

  factory _SignInFormModel.fromJson(Map<String, dynamic> json) =
      _$SignInFormModelImpl.fromJson;

  @override
  String get emailError;
  @override
  String get passwordError;
  @override
  bool get emailValid;
  @override
  bool get passwordValid;
  @override
  bool get isValid;
  @override
  String get email;
  @override
  String get password;
  @override
  @GlobalKeyConverter()
  GlobalKey<FormState>? get formKey;
  @override
  @JsonKey(ignore: true)
  _$$SignInFormModelImplCopyWith<_$SignInFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
