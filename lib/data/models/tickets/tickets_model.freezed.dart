// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketsModel _$TicketsModelFromJson(Map<String, dynamic> json) {
  return _TicketsModel.fromJson(json);
}

/// @nodoc
mixin _$TicketsModel {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketsModelCopyWith<TicketsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsModelCopyWith<$Res> {
  factory $TicketsModelCopyWith(
          TicketsModel value, $Res Function(TicketsModel) then) =
      _$TicketsModelCopyWithImpl<$Res, TicketsModel>;
  @useResult
  $Res call({String id, String image, String title});
}

/// @nodoc
class _$TicketsModelCopyWithImpl<$Res, $Val extends TicketsModel>
    implements $TicketsModelCopyWith<$Res> {
  _$TicketsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketsModelImplCopyWith<$Res>
    implements $TicketsModelCopyWith<$Res> {
  factory _$$TicketsModelImplCopyWith(
          _$TicketsModelImpl value, $Res Function(_$TicketsModelImpl) then) =
      __$$TicketsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String image, String title});
}

/// @nodoc
class __$$TicketsModelImplCopyWithImpl<$Res>
    extends _$TicketsModelCopyWithImpl<$Res, _$TicketsModelImpl>
    implements _$$TicketsModelImplCopyWith<$Res> {
  __$$TicketsModelImplCopyWithImpl(
      _$TicketsModelImpl _value, $Res Function(_$TicketsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? title = null,
  }) {
    return _then(_$TicketsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketsModelImpl implements _TicketsModel {
  const _$TicketsModelImpl(
      {required this.id, required this.image, required this.title});

  factory _$TicketsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String image;
  @override
  final String title;

  @override
  String toString() {
    return 'TicketsModel(id: $id, image: $image, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsModelImplCopyWith<_$TicketsModelImpl> get copyWith =>
      __$$TicketsModelImplCopyWithImpl<_$TicketsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketsModelImplToJson(
      this,
    );
  }
}

abstract class _TicketsModel implements TicketsModel {
  const factory _TicketsModel(
      {required final String id,
      required final String image,
      required final String title}) = _$TicketsModelImpl;

  factory _TicketsModel.fromJson(Map<String, dynamic> json) =
      _$TicketsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get image;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$TicketsModelImplCopyWith<_$TicketsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
