// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) {
  return _MatchModel.fromJson(json);
}

/// @nodoc
mixin _$MatchModel {
  String get id => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  DateTime get dayofMatch => throw _privateConstructorUsedError;
  String get leagueTitle => throw _privateConstructorUsedError;
  ResultModel get resultOfMatch => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchModelCopyWith<MatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchModelCopyWith<$Res> {
  factory $MatchModelCopyWith(
          MatchModel value, $Res Function(MatchModel) then) =
      _$MatchModelCopyWithImpl<$Res, MatchModel>;
  @useResult
  $Res call(
      {String id,
      String location,
      DateTime dayofMatch,
      String leagueTitle,
      ResultModel resultOfMatch,
      String? video,
      String? image});

  $ResultModelCopyWith<$Res> get resultOfMatch;
}

/// @nodoc
class _$MatchModelCopyWithImpl<$Res, $Val extends MatchModel>
    implements $MatchModelCopyWith<$Res> {
  _$MatchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? dayofMatch = null,
    Object? leagueTitle = null,
    Object? resultOfMatch = null,
    Object? video = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      dayofMatch: null == dayofMatch
          ? _value.dayofMatch
          : dayofMatch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      leagueTitle: null == leagueTitle
          ? _value.leagueTitle
          : leagueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      resultOfMatch: null == resultOfMatch
          ? _value.resultOfMatch
          : resultOfMatch // ignore: cast_nullable_to_non_nullable
              as ResultModel,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res> get resultOfMatch {
    return $ResultModelCopyWith<$Res>(_value.resultOfMatch, (value) {
      return _then(_value.copyWith(resultOfMatch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchModelImplCopyWith<$Res>
    implements $MatchModelCopyWith<$Res> {
  factory _$$MatchModelImplCopyWith(
          _$MatchModelImpl value, $Res Function(_$MatchModelImpl) then) =
      __$$MatchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String location,
      DateTime dayofMatch,
      String leagueTitle,
      ResultModel resultOfMatch,
      String? video,
      String? image});

  @override
  $ResultModelCopyWith<$Res> get resultOfMatch;
}

/// @nodoc
class __$$MatchModelImplCopyWithImpl<$Res>
    extends _$MatchModelCopyWithImpl<$Res, _$MatchModelImpl>
    implements _$$MatchModelImplCopyWith<$Res> {
  __$$MatchModelImplCopyWithImpl(
      _$MatchModelImpl _value, $Res Function(_$MatchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? dayofMatch = null,
    Object? leagueTitle = null,
    Object? resultOfMatch = null,
    Object? video = freezed,
    Object? image = freezed,
  }) {
    return _then(_$MatchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      dayofMatch: null == dayofMatch
          ? _value.dayofMatch
          : dayofMatch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      leagueTitle: null == leagueTitle
          ? _value.leagueTitle
          : leagueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      resultOfMatch: null == resultOfMatch
          ? _value.resultOfMatch
          : resultOfMatch // ignore: cast_nullable_to_non_nullable
              as ResultModel,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchModelImpl implements _MatchModel {
  const _$MatchModelImpl(
      {required this.id,
      required this.location,
      required this.dayofMatch,
      required this.leagueTitle,
      required this.resultOfMatch,
      this.video,
      this.image});

  factory _$MatchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchModelImplFromJson(json);

  @override
  final String id;
  @override
  final String location;
  @override
  final DateTime dayofMatch;
  @override
  final String leagueTitle;
  @override
  final ResultModel resultOfMatch;
  @override
  final String? video;
  @override
  final String? image;

  @override
  String toString() {
    return 'MatchModel(id: $id, location: $location, dayofMatch: $dayofMatch, leagueTitle: $leagueTitle, resultOfMatch: $resultOfMatch, video: $video, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.dayofMatch, dayofMatch) ||
                other.dayofMatch == dayofMatch) &&
            (identical(other.leagueTitle, leagueTitle) ||
                other.leagueTitle == leagueTitle) &&
            (identical(other.resultOfMatch, resultOfMatch) ||
                other.resultOfMatch == resultOfMatch) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, location, dayofMatch,
      leagueTitle, resultOfMatch, video, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchModelImplCopyWith<_$MatchModelImpl> get copyWith =>
      __$$MatchModelImplCopyWithImpl<_$MatchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchModelImplToJson(
      this,
    );
  }
}

abstract class _MatchModel implements MatchModel {
  const factory _MatchModel(
      {required final String id,
      required final String location,
      required final DateTime dayofMatch,
      required final String leagueTitle,
      required final ResultModel resultOfMatch,
      final String? video,
      final String? image}) = _$MatchModelImpl;

  factory _MatchModel.fromJson(Map<String, dynamic> json) =
      _$MatchModelImpl.fromJson;

  @override
  String get id;
  @override
  String get location;
  @override
  DateTime get dayofMatch;
  @override
  String get leagueTitle;
  @override
  ResultModel get resultOfMatch;
  @override
  String? get video;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$MatchModelImplCopyWith<_$MatchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
