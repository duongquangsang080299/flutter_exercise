// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_match_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveMatchViewModel _$LiveMatchViewModelFromJson(Map<String, dynamic> json) {
  return _LiveMatchViewModel.fromJson(json);
}

/// @nodoc
mixin _$LiveMatchViewModel {
  String? get id => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveMatchViewModelCopyWith<LiveMatchViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveMatchViewModelCopyWith<$Res> {
  factory $LiveMatchViewModelCopyWith(
          LiveMatchViewModel value, $Res Function(LiveMatchViewModel) then) =
      _$LiveMatchViewModelCopyWithImpl<$Res, LiveMatchViewModel>;
  @useResult
  $Res call({String? id, String video});
}

/// @nodoc
class _$LiveMatchViewModelCopyWithImpl<$Res, $Val extends LiveMatchViewModel>
    implements $LiveMatchViewModelCopyWith<$Res> {
  _$LiveMatchViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? video = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveMatchViewModelImplCopyWith<$Res>
    implements $LiveMatchViewModelCopyWith<$Res> {
  factory _$$LiveMatchViewModelImplCopyWith(_$LiveMatchViewModelImpl value,
          $Res Function(_$LiveMatchViewModelImpl) then) =
      __$$LiveMatchViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String video});
}

/// @nodoc
class __$$LiveMatchViewModelImplCopyWithImpl<$Res>
    extends _$LiveMatchViewModelCopyWithImpl<$Res, _$LiveMatchViewModelImpl>
    implements _$$LiveMatchViewModelImplCopyWith<$Res> {
  __$$LiveMatchViewModelImplCopyWithImpl(_$LiveMatchViewModelImpl _value,
      $Res Function(_$LiveMatchViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? video = null,
  }) {
    return _then(_$LiveMatchViewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiveMatchViewModelImpl implements _LiveMatchViewModel {
  const _$LiveMatchViewModelImpl({this.id, required this.video});

  factory _$LiveMatchViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveMatchViewModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String video;

  @override
  String toString() {
    return 'LiveMatchViewModel(id: $id, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveMatchViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.video, video) || other.video == video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, video);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveMatchViewModelImplCopyWith<_$LiveMatchViewModelImpl> get copyWith =>
      __$$LiveMatchViewModelImplCopyWithImpl<_$LiveMatchViewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveMatchViewModelImplToJson(
      this,
    );
  }
}

abstract class _LiveMatchViewModel implements LiveMatchViewModel {
  const factory _LiveMatchViewModel(
      {final String? id,
      required final String video}) = _$LiveMatchViewModelImpl;

  factory _LiveMatchViewModel.fromJson(Map<String, dynamic> json) =
      _$LiveMatchViewModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get video;
  @override
  @JsonKey(ignore: true)
  _$$LiveMatchViewModelImplCopyWith<_$LiveMatchViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
