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
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;
  bool? get formValid => throw _privateConstructorUsedError;
  bool? get processing => throw _privateConstructorUsedError;

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
      {String email,
      String password,
      bool showPassword,
      bool? formValid,
      bool? processing});
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
    Object? email = null,
    Object? password = null,
    Object? showPassword = null,
    Object? formValid = freezed,
    Object? processing = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      formValid: freezed == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      processing: freezed == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      {String email,
      String password,
      bool showPassword,
      bool? formValid,
      bool? processing});
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
    Object? email = null,
    Object? password = null,
    Object? showPassword = null,
    Object? formValid = freezed,
    Object? processing = freezed,
  }) {
    return _then(_$SignInFormModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      formValid: freezed == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      processing: freezed == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInFormModelImpl implements _SignInFormModel {
  const _$SignInFormModelImpl(
      {required this.email,
      required this.password,
      required this.showPassword,
      this.formValid,
      this.processing});

  factory _$SignInFormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInFormModelImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final bool showPassword;
  @override
  final bool? formValid;
  @override
  final bool? processing;

  @override
  String toString() {
    return 'SignInFormModel(email: $email, password: $password, showPassword: $showPassword, formValid: $formValid, processing: $processing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.formValid, formValid) ||
                other.formValid == formValid) &&
            (identical(other.processing, processing) ||
                other.processing == processing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, showPassword, formValid, processing);

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
      {required final String email,
      required final String password,
      required final bool showPassword,
      final bool? formValid,
      final bool? processing}) = _$SignInFormModelImpl;

  factory _SignInFormModel.fromJson(Map<String, dynamic> json) =
      _$SignInFormModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get showPassword;
  @override
  bool? get formValid;
  @override
  bool? get processing;
  @override
  @JsonKey(ignore: true)
  _$$SignInFormModelImplCopyWith<_$SignInFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
