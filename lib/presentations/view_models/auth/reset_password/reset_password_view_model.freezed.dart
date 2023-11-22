// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResetPasswordFormModel _$ResetPasswordFormModelFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordFormModel.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordFormModel {
  String? get emailError => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @GlobalKeyConverter()
  GlobalKey<FormState>? get formKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordFormModelCopyWith<ResetPasswordFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordFormModelCopyWith<$Res> {
  factory $ResetPasswordFormModelCopyWith(ResetPasswordFormModel value,
          $Res Function(ResetPasswordFormModel) then) =
      _$ResetPasswordFormModelCopyWithImpl<$Res, ResetPasswordFormModel>;
  @useResult
  $Res call(
      {String? emailError,
      String email,
      String? errorMessage,
      @GlobalKeyConverter() GlobalKey<FormState>? formKey});
}

/// @nodoc
class _$ResetPasswordFormModelCopyWithImpl<$Res,
        $Val extends ResetPasswordFormModel>
    implements $ResetPasswordFormModelCopyWith<$Res> {
  _$ResetPasswordFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = freezed,
    Object? email = null,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
  }) {
    return _then(_value.copyWith(
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordFormModelImplCopyWith<$Res>
    implements $ResetPasswordFormModelCopyWith<$Res> {
  factory _$$ResetPasswordFormModelImplCopyWith(
          _$ResetPasswordFormModelImpl value,
          $Res Function(_$ResetPasswordFormModelImpl) then) =
      __$$ResetPasswordFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? emailError,
      String email,
      String? errorMessage,
      @GlobalKeyConverter() GlobalKey<FormState>? formKey});
}

/// @nodoc
class __$$ResetPasswordFormModelImplCopyWithImpl<$Res>
    extends _$ResetPasswordFormModelCopyWithImpl<$Res,
        _$ResetPasswordFormModelImpl>
    implements _$$ResetPasswordFormModelImplCopyWith<$Res> {
  __$$ResetPasswordFormModelImplCopyWithImpl(
      _$ResetPasswordFormModelImpl _value,
      $Res Function(_$ResetPasswordFormModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = freezed,
    Object? email = null,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
  }) {
    return _then(_$ResetPasswordFormModelImpl(
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ResetPasswordFormModelImpl implements _ResetPasswordFormModel {
  const _$ResetPasswordFormModelImpl(
      {this.emailError,
      required this.email,
      this.errorMessage,
      @GlobalKeyConverter() this.formKey});

  factory _$ResetPasswordFormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordFormModelImplFromJson(json);

  @override
  final String? emailError;
  @override
  final String email;
  @override
  final String? errorMessage;
  @override
  @GlobalKeyConverter()
  final GlobalKey<FormState>? formKey;

  @override
  String toString() {
    return 'ResetPasswordFormModel(emailError: $emailError, email: $email, errorMessage: $errorMessage, formKey: $formKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordFormModelImpl &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, emailError, email, errorMessage, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordFormModelImplCopyWith<_$ResetPasswordFormModelImpl>
      get copyWith => __$$ResetPasswordFormModelImplCopyWithImpl<
          _$ResetPasswordFormModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordFormModelImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordFormModel implements ResetPasswordFormModel {
  const factory _ResetPasswordFormModel(
          {final String? emailError,
          required final String email,
          final String? errorMessage,
          @GlobalKeyConverter() final GlobalKey<FormState>? formKey}) =
      _$ResetPasswordFormModelImpl;

  factory _ResetPasswordFormModel.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordFormModelImpl.fromJson;

  @override
  String? get emailError;
  @override
  String get email;
  @override
  String? get errorMessage;
  @override
  @GlobalKeyConverter()
  GlobalKey<FormState>? get formKey;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordFormModelImplCopyWith<_$ResetPasswordFormModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
