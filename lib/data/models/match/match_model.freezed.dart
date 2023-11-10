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
  DateTime get dateTime => throw _privateConstructorUsedError;
  TeamModel get teamHome => throw _privateConstructorUsedError;
  TeamModel get teamAway => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  HistoryModel get history => throw _privateConstructorUsedError;

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
      DateTime dateTime,
      TeamModel teamHome,
      TeamModel teamAway,
      String result,
      HistoryModel history});

  $TeamModelCopyWith<$Res> get teamHome;
  $TeamModelCopyWith<$Res> get teamAway;
  $HistoryModelCopyWith<$Res> get history;
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
    Object? dateTime = null,
    Object? teamHome = null,
    Object? teamAway = null,
    Object? result = null,
    Object? history = null,
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
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as HistoryModel,
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

  @override
  @pragma('vm:prefer-inline')
  $HistoryModelCopyWith<$Res> get history {
    return $HistoryModelCopyWith<$Res>(_value.history, (value) {
      return _then(_value.copyWith(history: value) as $Val);
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
      DateTime dateTime,
      TeamModel teamHome,
      TeamModel teamAway,
      String result,
      HistoryModel history});

  @override
  $TeamModelCopyWith<$Res> get teamHome;
  @override
  $TeamModelCopyWith<$Res> get teamAway;
  @override
  $HistoryModelCopyWith<$Res> get history;
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
    Object? dateTime = null,
    Object? teamHome = null,
    Object? teamAway = null,
    Object? result = null,
    Object? history = null,
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
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as HistoryModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchModelImpl with DiagnosticableTreeMixin implements _MatchModel {
  const _$MatchModelImpl(
      {required this.id,
      required this.location,
      required this.dateTime,
      required this.teamHome,
      required this.teamAway,
      required this.result,
      required this.history});

  factory _$MatchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchModelImplFromJson(json);

  @override
  final String id;
  @override
  final String location;
  @override
  final DateTime dateTime;
  @override
  final TeamModel teamHome;
  @override
  final TeamModel teamAway;
  @override
  final String result;
  @override
  final HistoryModel history;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MatchModel(id: $id, location: $location, dateTime: $dateTime, teamHome: $teamHome, teamAway: $teamAway, result: $result, history: $history)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MatchModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('dateTime', dateTime))
      ..add(DiagnosticsProperty('teamHome', teamHome))
      ..add(DiagnosticsProperty('teamAway', teamAway))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('history', history));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.teamHome, teamHome) ||
                other.teamHome == teamHome) &&
            (identical(other.teamAway, teamAway) ||
                other.teamAway == teamAway) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.history, history) || other.history == history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, location, dateTime, teamHome, teamAway, result, history);

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
      required final DateTime dateTime,
      required final TeamModel teamHome,
      required final TeamModel teamAway,
      required final String result,
      required final HistoryModel history}) = _$MatchModelImpl;

  factory _MatchModel.fromJson(Map<String, dynamic> json) =
      _$MatchModelImpl.fromJson;

  @override
  String get id;
  @override
  String get location;
  @override
  DateTime get dateTime;
  @override
  TeamModel get teamHome;
  @override
  TeamModel get teamAway;
  @override
  String get result;
  @override
  HistoryModel get history;
  @override
  @JsonKey(ignore: true)
  _$$MatchModelImplCopyWith<_$MatchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
