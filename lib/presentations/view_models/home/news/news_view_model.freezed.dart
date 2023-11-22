// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsViewModel _$NewsViewModelFromJson(Map<String, dynamic> json) {
  return _NewsViewModel.fromJson(json);
}

/// @nodoc
mixin _$NewsViewModel {
  String? get id => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsViewModelCopyWith<NewsViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsViewModelCopyWith<$Res> {
  factory $NewsViewModelCopyWith(
          NewsViewModel value, $Res Function(NewsViewModel) then) =
      _$NewsViewModelCopyWithImpl<$Res, NewsViewModel>;
  @useResult
  $Res call(
      {String? id,
      String result,
      String title,
      DateTime dateTime,
      String video,
      String image,
      String description});
}

/// @nodoc
class _$NewsViewModelCopyWithImpl<$Res, $Val extends NewsViewModel>
    implements $NewsViewModelCopyWith<$Res> {
  _$NewsViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? result = null,
    Object? title = null,
    Object? dateTime = null,
    Object? video = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsViewModelImplCopyWith<$Res>
    implements $NewsViewModelCopyWith<$Res> {
  factory _$$NewsViewModelImplCopyWith(
          _$NewsViewModelImpl value, $Res Function(_$NewsViewModelImpl) then) =
      __$$NewsViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String result,
      String title,
      DateTime dateTime,
      String video,
      String image,
      String description});
}

/// @nodoc
class __$$NewsViewModelImplCopyWithImpl<$Res>
    extends _$NewsViewModelCopyWithImpl<$Res, _$NewsViewModelImpl>
    implements _$$NewsViewModelImplCopyWith<$Res> {
  __$$NewsViewModelImplCopyWithImpl(
      _$NewsViewModelImpl _value, $Res Function(_$NewsViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? result = null,
    Object? title = null,
    Object? dateTime = null,
    Object? video = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$NewsViewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsViewModelImpl implements _NewsViewModel {
  const _$NewsViewModelImpl(
      {this.id,
      required this.result,
      required this.title,
      required this.dateTime,
      required this.video,
      required this.image,
      required this.description});

  factory _$NewsViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsViewModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String result;
  @override
  final String title;
  @override
  final DateTime dateTime;
  @override
  final String video;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'NewsViewModel(id: $id, result: $result, title: $title, dateTime: $dateTime, video: $video, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, result, title, dateTime, video, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsViewModelImplCopyWith<_$NewsViewModelImpl> get copyWith =>
      __$$NewsViewModelImplCopyWithImpl<_$NewsViewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsViewModelImplToJson(
      this,
    );
  }
}

abstract class _NewsViewModel implements NewsViewModel {
  const factory _NewsViewModel(
      {final String? id,
      required final String result,
      required final String title,
      required final DateTime dateTime,
      required final String video,
      required final String image,
      required final String description}) = _$NewsViewModelImpl;

  factory _NewsViewModel.fromJson(Map<String, dynamic> json) =
      _$NewsViewModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get result;
  @override
  String get title;
  @override
  DateTime get dateTime;
  @override
  String get video;
  @override
  String get image;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$NewsViewModelImplCopyWith<_$NewsViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
