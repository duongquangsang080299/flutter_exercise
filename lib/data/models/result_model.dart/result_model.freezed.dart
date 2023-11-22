// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  String get id => throw _privateConstructorUsedError;
  TeamModel get teamRed => throw _privateConstructorUsedError;
  TeamModel get teamVictory => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call(
      {String id, TeamModel teamRed, TeamModel teamVictory, String result});

  $TeamModelCopyWith<$Res> get teamRed;
  $TeamModelCopyWith<$Res> get teamVictory;
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

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
    Object? result = null,
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
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ResultModelImplCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$ResultModelImplCopyWith(
          _$ResultModelImpl value, $Res Function(_$ResultModelImpl) then) =
      __$$ResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, TeamModel teamRed, TeamModel teamVictory, String result});

  @override
  $TeamModelCopyWith<$Res> get teamRed;
  @override
  $TeamModelCopyWith<$Res> get teamVictory;
}

/// @nodoc
class __$$ResultModelImplCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$ResultModelImpl>
    implements _$$ResultModelImplCopyWith<$Res> {
  __$$ResultModelImplCopyWithImpl(
      _$ResultModelImpl _value, $Res Function(_$ResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamRed = null,
    Object? teamVictory = null,
    Object? result = null,
  }) {
    return _then(_$ResultModelImpl(
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
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultModelImpl implements _ResultModel {
  const _$ResultModelImpl(
      {required this.id,
      required this.teamRed,
      required this.teamVictory,
      required this.result});

  factory _$ResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultModelImplFromJson(json);

  @override
  final String id;
  @override
  final TeamModel teamRed;
  @override
  final TeamModel teamVictory;
  @override
  final String result;

  @override
  String toString() {
    return 'ResultModel(id: $id, teamRed: $teamRed, teamVictory: $teamVictory, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamRed, teamRed) || other.teamRed == teamRed) &&
            (identical(other.teamVictory, teamVictory) ||
                other.teamVictory == teamVictory) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, teamRed, teamVictory, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      __$$ResultModelImplCopyWithImpl<_$ResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultModelImplToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  const factory _ResultModel(
      {required final String id,
      required final TeamModel teamRed,
      required final TeamModel teamVictory,
      required final String result}) = _$ResultModelImpl;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$ResultModelImpl.fromJson;

  @override
  String get id;
  @override
  TeamModel get teamRed;
  @override
  TeamModel get teamVictory;
  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
