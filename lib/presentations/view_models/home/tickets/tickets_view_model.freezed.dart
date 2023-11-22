// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketsViewModel _$TicketsViewModelFromJson(Map<String, dynamic> json) {
  return _TicketsViewModel.fromJson(json);
}

/// @nodoc
mixin _$TicketsViewModel {
  String? get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketsViewModelCopyWith<TicketsViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsViewModelCopyWith<$Res> {
  factory $TicketsViewModelCopyWith(
          TicketsViewModel value, $Res Function(TicketsViewModel) then) =
      _$TicketsViewModelCopyWithImpl<$Res, TicketsViewModel>;
  @useResult
  $Res call({String? id, String image, String title});
}

/// @nodoc
class _$TicketsViewModelCopyWithImpl<$Res, $Val extends TicketsViewModel>
    implements $TicketsViewModelCopyWith<$Res> {
  _$TicketsViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$TicketsViewModelImplCopyWith<$Res>
    implements $TicketsViewModelCopyWith<$Res> {
  factory _$$TicketsViewModelImplCopyWith(_$TicketsViewModelImpl value,
          $Res Function(_$TicketsViewModelImpl) then) =
      __$$TicketsViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String image, String title});
}

/// @nodoc
class __$$TicketsViewModelImplCopyWithImpl<$Res>
    extends _$TicketsViewModelCopyWithImpl<$Res, _$TicketsViewModelImpl>
    implements _$$TicketsViewModelImplCopyWith<$Res> {
  __$$TicketsViewModelImplCopyWithImpl(_$TicketsViewModelImpl _value,
      $Res Function(_$TicketsViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = null,
    Object? title = null,
  }) {
    return _then(_$TicketsViewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$TicketsViewModelImpl implements _TicketsViewModel {
  const _$TicketsViewModelImpl(
      {this.id, required this.image, required this.title});

  factory _$TicketsViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketsViewModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String image;
  @override
  final String title;

  @override
  String toString() {
    return 'TicketsViewModel(id: $id, image: $image, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsViewModelImpl &&
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
  _$$TicketsViewModelImplCopyWith<_$TicketsViewModelImpl> get copyWith =>
      __$$TicketsViewModelImplCopyWithImpl<_$TicketsViewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketsViewModelImplToJson(
      this,
    );
  }
}

abstract class _TicketsViewModel implements TicketsViewModel {
  const factory _TicketsViewModel(
      {final String? id,
      required final String image,
      required final String title}) = _$TicketsViewModelImpl;

  factory _TicketsViewModel.fromJson(Map<String, dynamic> json) =
      _$TicketsViewModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get image;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$TicketsViewModelImplCopyWith<_$TicketsViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
