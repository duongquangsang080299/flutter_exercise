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

GoalModel _$GoalModelFromJson(Map<String, dynamic> json) {
  return _GoalModel.fromJson(json);
}

/// @nodoc
mixin _$GoalModel {
  String get id => throw _privateConstructorUsedError;
  TeamModel get teamRed => throw _privateConstructorUsedError;
  TeamModel get teamVictory => throw _privateConstructorUsedError;
  int get scoreRed => throw _privateConstructorUsedError;
  int get scoreVictory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalModelCopyWith<GoalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalModelCopyWith<$Res> {
  factory $GoalModelCopyWith(GoalModel value, $Res Function(GoalModel) then) =
      _$GoalModelCopyWithImpl<$Res, GoalModel>;
  @useResult
  $Res call(
      {String id,
      TeamModel teamRed,
      TeamModel teamVictory,
      int scoreRed,
      int scoreVictory});

  $TeamModelCopyWith<$Res> get teamRed;
  $TeamModelCopyWith<$Res> get teamVictory;
}

/// @nodoc
class _$GoalModelCopyWithImpl<$Res, $Val extends GoalModel>
    implements $GoalModelCopyWith<$Res> {
  _$GoalModelCopyWithImpl(this._value, this._then);

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
              as TeamModel,
      teamVictory: null == teamVictory
          ? _value.teamVictory
          : teamVictory // ignore: cast_nullable_to_non_nullable
              as TeamModel,
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

  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get teamRed {
    return $TeamModelCopyWith<$Res>(_value.teamRed, (value) {
      return _then(_value.copyWith(teamRed: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get teamVictory {
    return $TeamModelCopyWith<$Res>(_value.teamVictory, (value) {
      return _then(_value.copyWith(teamVictory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoalModelImplCopyWith<$Res>
    implements $GoalModelCopyWith<$Res> {
  factory _$$GoalModelImplCopyWith(
          _$GoalModelImpl value, $Res Function(_$GoalModelImpl) then) =
      __$$GoalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      TeamModel teamRed,
      TeamModel teamVictory,
      int scoreRed,
      int scoreVictory});

  @override
  $TeamModelCopyWith<$Res> get teamRed;
  @override
  $TeamModelCopyWith<$Res> get teamVictory;
}

/// @nodoc
class __$$GoalModelImplCopyWithImpl<$Res>
    extends _$GoalModelCopyWithImpl<$Res, _$GoalModelImpl>
    implements _$$GoalModelImplCopyWith<$Res> {
  __$$GoalModelImplCopyWithImpl(
      _$GoalModelImpl _value, $Res Function(_$GoalModelImpl) _then)
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
    return _then(_$GoalModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      teamRed: null == teamRed
          ? _value.teamRed
          : teamRed // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      teamVictory: null == teamVictory
          ? _value.teamVictory
          : teamVictory // ignore: cast_nullable_to_non_nullable
              as TeamModel,
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
class _$GoalModelImpl implements _GoalModel {
  const _$GoalModelImpl(
      {required this.id,
      required this.teamRed,
      required this.teamVictory,
      required this.scoreRed,
      required this.scoreVictory});

  factory _$GoalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalModelImplFromJson(json);

  @override
  final String id;
  @override
  final TeamModel teamRed;
  @override
  final TeamModel teamVictory;
  @override
  final int scoreRed;
  @override
  final int scoreVictory;

  @override
  String toString() {
    return 'GoalModel(id: $id, teamRed: $teamRed, teamVictory: $teamVictory, scoreRed: $scoreRed, scoreVictory: $scoreVictory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalModelImpl &&
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
  _$$GoalModelImplCopyWith<_$GoalModelImpl> get copyWith =>
      __$$GoalModelImplCopyWithImpl<_$GoalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalModelImplToJson(
      this,
    );
  }
}

abstract class _GoalModel implements GoalModel {
  const factory _GoalModel(
      {required final String id,
      required final TeamModel teamRed,
      required final TeamModel teamVictory,
      required final int scoreRed,
      required final int scoreVictory}) = _$GoalModelImpl;

  factory _GoalModel.fromJson(Map<String, dynamic> json) =
      _$GoalModelImpl.fromJson;

  @override
  String get id;
  @override
  TeamModel get teamRed;
  @override
  TeamModel get teamVictory;
  @override
  int get scoreRed;
  @override
  int get scoreVictory;
  @override
  @JsonKey(ignore: true)
  _$$GoalModelImplCopyWith<_$GoalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
