// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GoalsModel _$GoalsModelFromJson(Map<String, dynamic> json) {
  return _GoalsModel.fromJson(json);
}

/// @nodoc
mixin _$GoalsModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_red')
  String get teamRed => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_victory')
  String get teamVictory => throw _privateConstructorUsedError;
  @JsonKey(name: 'score_Red')
  int get scoreRed => throw _privateConstructorUsedError;
  @JsonKey(name: 'score_Victory')
  int get scoreVictory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalsModelCopyWith<GoalsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsModelCopyWith<$Res> {
  factory $GoalsModelCopyWith(
          GoalsModel value, $Res Function(GoalsModel) then) =
      _$GoalsModelCopyWithImpl<$Res, GoalsModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'team_red') String teamRed,
      @JsonKey(name: 'team_victory') String teamVictory,
      @JsonKey(name: 'score_Red') int scoreRed,
      @JsonKey(name: 'score_Victory') int scoreVictory});
}

/// @nodoc
class _$GoalsModelCopyWithImpl<$Res, $Val extends GoalsModel>
    implements $GoalsModelCopyWith<$Res> {
  _$GoalsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamRed = null,
    Object? teamVictory = null,
    Object? scoreRed = null,
    Object? scoreVictory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      teamRed: null == teamRed
          ? _value.teamRed
          : teamRed // ignore: cast_nullable_to_non_nullable
              as String,
      teamVictory: null == teamVictory
          ? _value.teamVictory
          : teamVictory // ignore: cast_nullable_to_non_nullable
              as String,
      scoreRed: null == scoreRed
          ? _value.scoreRed
          : scoreRed // ignore: cast_nullable_to_non_nullable
              as int,
      scoreVictory: null == scoreVictory
          ? _value.scoreVictory
          : scoreVictory // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalsModelImplCopyWith<$Res>
    implements $GoalsModelCopyWith<$Res> {
  factory _$$GoalsModelImplCopyWith(
          _$GoalsModelImpl value, $Res Function(_$GoalsModelImpl) then) =
      __$$GoalsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'team_red') String teamRed,
      @JsonKey(name: 'team_victory') String teamVictory,
      @JsonKey(name: 'score_Red') int scoreRed,
      @JsonKey(name: 'score_Victory') int scoreVictory});
}

/// @nodoc
class __$$GoalsModelImplCopyWithImpl<$Res>
    extends _$GoalsModelCopyWithImpl<$Res, _$GoalsModelImpl>
    implements _$$GoalsModelImplCopyWith<$Res> {
  __$$GoalsModelImplCopyWithImpl(
      _$GoalsModelImpl _value, $Res Function(_$GoalsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamRed = null,
    Object? teamVictory = null,
    Object? scoreRed = null,
    Object? scoreVictory = null,
  }) {
    return _then(_$GoalsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      teamRed: null == teamRed
          ? _value.teamRed
          : teamRed // ignore: cast_nullable_to_non_nullable
              as String,
      teamVictory: null == teamVictory
          ? _value.teamVictory
          : teamVictory // ignore: cast_nullable_to_non_nullable
              as String,
      scoreRed: null == scoreRed
          ? _value.scoreRed
          : scoreRed // ignore: cast_nullable_to_non_nullable
              as int,
      scoreVictory: null == scoreVictory
          ? _value.scoreVictory
          : scoreVictory // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalsModelImpl implements _GoalsModel {
  const _$GoalsModelImpl(
      {required this.id,
      @JsonKey(name: 'team_red') required this.teamRed,
      @JsonKey(name: 'team_victory') required this.teamVictory,
      @JsonKey(name: 'score_Red') required this.scoreRed,
      @JsonKey(name: 'score_Victory') required this.scoreVictory});

  factory _$GoalsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalsModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'team_red')
  final String teamRed;
  @override
  @JsonKey(name: 'team_victory')
  final String teamVictory;
  @override
  @JsonKey(name: 'score_Red')
  final int scoreRed;
  @override
  @JsonKey(name: 'score_Victory')
  final int scoreVictory;

  @override
  String toString() {
    return 'GoalsModel(id: $id, teamRed: $teamRed, teamVictory: $teamVictory, scoreRed: $scoreRed, scoreVictory: $scoreVictory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamRed, teamRed) || other.teamRed == teamRed) &&
            (identical(other.teamVictory, teamVictory) ||
                other.teamVictory == teamVictory) &&
            (identical(other.scoreRed, scoreRed) ||
                other.scoreRed == scoreRed) &&
            (identical(other.scoreVictory, scoreVictory) ||
                other.scoreVictory == scoreVictory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, teamRed, teamVictory, scoreRed, scoreVictory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalsModelImplCopyWith<_$GoalsModelImpl> get copyWith =>
      __$$GoalsModelImplCopyWithImpl<_$GoalsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalsModelImplToJson(
      this,
    );
  }
}

abstract class _GoalsModel implements GoalsModel {
  const factory _GoalsModel(
          {required final String id,
          @JsonKey(name: 'team_red') required final String teamRed,
          @JsonKey(name: 'team_victory') required final String teamVictory,
          @JsonKey(name: 'score_Red') required final int scoreRed,
          @JsonKey(name: 'score_Victory') required final int scoreVictory}) =
      _$GoalsModelImpl;

  factory _GoalsModel.fromJson(Map<String, dynamic> json) =
      _$GoalsModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'team_red')
  String get teamRed;
  @override
  @JsonKey(name: 'team_victory')
  String get teamVictory;
  @override
  @JsonKey(name: 'score_Red')
  int get scoreRed;
  @override
  @JsonKey(name: 'score_Victory')
  int get scoreVictory;
  @override
  @JsonKey(ignore: true)
  _$$GoalsModelImplCopyWith<_$GoalsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
