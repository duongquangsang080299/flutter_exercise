// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListNewsModel _$ListNewsModelFromJson(Map<String, dynamic> json) {
  return _ListNewsModel.fromJson(json);
}

/// @nodoc
mixin _$ListNewsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  TeamModel get teamHome => throw _privateConstructorUsedError;
  TeamModel get teamAway => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListNewsModelCopyWith<ListNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListNewsModelCopyWith<$Res> {
  factory $ListNewsModelCopyWith(
          ListNewsModel value, $Res Function(ListNewsModel) then) =
      _$ListNewsModelCopyWithImpl<$Res, ListNewsModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime dateTime,
      TeamModel teamHome,
      TeamModel teamAway,
      String result,
      String image,
      String video});

  $TeamModelCopyWith<$Res> get teamHome;
  $TeamModelCopyWith<$Res> get teamAway;
}

/// @nodoc
class _$ListNewsModelCopyWithImpl<$Res, $Val extends ListNewsModel>
    implements $ListNewsModelCopyWith<$Res> {
  _$ListNewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? dateTime = null,
    Object? teamHome = null,
    Object? teamAway = null,
    Object? result = null,
    Object? image = null,
    Object? video = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      teamHome: null == teamHome
          ? _value.teamHome
          : teamHome // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      teamAway: null == teamAway
          ? _value.teamAway
          : teamAway // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get teamHome {
    return $TeamModelCopyWith<$Res>(_value.teamHome, (value) {
      return _then(_value.copyWith(teamHome: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get teamAway {
    return $TeamModelCopyWith<$Res>(_value.teamAway, (value) {
      return _then(_value.copyWith(teamAway: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListNewsModelImplCopyWith<$Res>
    implements $ListNewsModelCopyWith<$Res> {
  factory _$$ListNewsModelImplCopyWith(
          _$ListNewsModelImpl value, $Res Function(_$ListNewsModelImpl) then) =
      __$$ListNewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime dateTime,
      TeamModel teamHome,
      TeamModel teamAway,
      String result,
      String image,
      String video});

  @override
  $TeamModelCopyWith<$Res> get teamHome;
  @override
  $TeamModelCopyWith<$Res> get teamAway;
}

/// @nodoc
class __$$ListNewsModelImplCopyWithImpl<$Res>
    extends _$ListNewsModelCopyWithImpl<$Res, _$ListNewsModelImpl>
    implements _$$ListNewsModelImplCopyWith<$Res> {
  __$$ListNewsModelImplCopyWithImpl(
      _$ListNewsModelImpl _value, $Res Function(_$ListNewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? dateTime = null,
    Object? teamHome = null,
    Object? teamAway = null,
    Object? result = null,
    Object? image = null,
    Object? video = null,
  }) {
    return _then(_$ListNewsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      teamHome: null == teamHome
          ? _value.teamHome
          : teamHome // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      teamAway: null == teamAway
          ? _value.teamAway
          : teamAway // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListNewsModelImpl implements _ListNewsModel {
  const _$ListNewsModelImpl(
      {required this.id,
      required this.title,
      required this.dateTime,
      required this.teamHome,
      required this.teamAway,
      required this.result,
      required this.image,
      required this.video});

  factory _$ListNewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListNewsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime dateTime;
  @override
  final TeamModel teamHome;
  @override
  final TeamModel teamAway;
  @override
  final String result;
  @override
  final String image;
  @override
  final String video;

  @override
  String toString() {
    return 'ListNewsModel(id: $id, title: $title, dateTime: $dateTime, teamHome: $teamHome, teamAway: $teamAway, result: $result, image: $image, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListNewsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.teamHome, teamHome) ||
                other.teamHome == teamHome) &&
            (identical(other.teamAway, teamAway) ||
                other.teamAway == teamAway) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.video, video) || other.video == video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, dateTime, teamHome,
      teamAway, result, image, video);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListNewsModelImplCopyWith<_$ListNewsModelImpl> get copyWith =>
      __$$ListNewsModelImplCopyWithImpl<_$ListNewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListNewsModelImplToJson(
      this,
    );
  }
}

abstract class _ListNewsModel implements ListNewsModel {
  const factory _ListNewsModel(
      {required final String id,
      required final String title,
      required final DateTime dateTime,
      required final TeamModel teamHome,
      required final TeamModel teamAway,
      required final String result,
      required final String image,
      required final String video}) = _$ListNewsModelImpl;

  factory _ListNewsModel.fromJson(Map<String, dynamic> json) =
      _$ListNewsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get dateTime;
  @override
  TeamModel get teamHome;
  @override
  TeamModel get teamAway;
  @override
  String get result;
  @override
  String get image;
  @override
  String get video;
  @override
  @JsonKey(ignore: true)
  _$$ListNewsModelImplCopyWith<_$ListNewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
