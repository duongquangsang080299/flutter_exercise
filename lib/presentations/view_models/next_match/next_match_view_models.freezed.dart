// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'next_match_view_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NextMatchViewModel _$NextMatchViewModelFromJson(Map<String, dynamic> json) {
  return _NextMatchViewModel.fromJson(json);
}

/// @nodoc
mixin _$NextMatchViewModel {
  MatchModel get nextMatch => throw _privateConstructorUsedError;
  GoalModel get goalMatch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextMatchViewModelCopyWith<NextMatchViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextMatchViewModelCopyWith<$Res> {
  factory $NextMatchViewModelCopyWith(
          NextMatchViewModel value, $Res Function(NextMatchViewModel) then) =
      _$NextMatchViewModelCopyWithImpl<$Res, NextMatchViewModel>;
  @useResult
  $Res call({MatchModel nextMatch, GoalModel goalMatch});

  $MatchModelCopyWith<$Res> get nextMatch;
  $GoalModelCopyWith<$Res> get goalMatch;
}

/// @nodoc
class _$NextMatchViewModelCopyWithImpl<$Res, $Val extends NextMatchViewModel>
    implements $NextMatchViewModelCopyWith<$Res> {
  _$NextMatchViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextMatch = null,
    Object? goalMatch = null,
  }) {
    return _then(_value.copyWith(
      nextMatch: null == nextMatch
          ? _value.nextMatch
          : nextMatch // ignore: cast_nullable_to_non_nullable
              as MatchModel,
      goalMatch: null == goalMatch
          ? _value.goalMatch
          : goalMatch // ignore: cast_nullable_to_non_nullable
              as GoalModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchModelCopyWith<$Res> get nextMatch {
    return $MatchModelCopyWith<$Res>(_value.nextMatch, (value) {
      return _then(_value.copyWith(nextMatch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalModelCopyWith<$Res> get goalMatch {
    return $GoalModelCopyWith<$Res>(_value.goalMatch, (value) {
      return _then(_value.copyWith(goalMatch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NextMatchViewModelImplCopyWith<$Res>
    implements $NextMatchViewModelCopyWith<$Res> {
  factory _$$NextMatchViewModelImplCopyWith(_$NextMatchViewModelImpl value,
          $Res Function(_$NextMatchViewModelImpl) then) =
      __$$NextMatchViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MatchModel nextMatch, GoalModel goalMatch});

  @override
  $MatchModelCopyWith<$Res> get nextMatch;
  @override
  $GoalModelCopyWith<$Res> get goalMatch;
}

/// @nodoc
class __$$NextMatchViewModelImplCopyWithImpl<$Res>
    extends _$NextMatchViewModelCopyWithImpl<$Res, _$NextMatchViewModelImpl>
    implements _$$NextMatchViewModelImplCopyWith<$Res> {
  __$$NextMatchViewModelImplCopyWithImpl(_$NextMatchViewModelImpl _value,
      $Res Function(_$NextMatchViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextMatch = null,
    Object? goalMatch = null,
  }) {
    return _then(_$NextMatchViewModelImpl(
      nextMatch: null == nextMatch
          ? _value.nextMatch
          : nextMatch // ignore: cast_nullable_to_non_nullable
              as MatchModel,
      goalMatch: null == goalMatch
          ? _value.goalMatch
          : goalMatch // ignore: cast_nullable_to_non_nullable
              as GoalModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextMatchViewModelImpl implements _NextMatchViewModel {
  const _$NextMatchViewModelImpl(
      {required this.nextMatch, required this.goalMatch});

  factory _$NextMatchViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextMatchViewModelImplFromJson(json);

  @override
  final MatchModel nextMatch;
  @override
  final GoalModel goalMatch;

  @override
  String toString() {
    return 'NextMatchViewModel(nextMatch: $nextMatch, goalMatch: $goalMatch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextMatchViewModelImpl &&
            (identical(other.nextMatch, nextMatch) ||
                other.nextMatch == nextMatch) &&
            (identical(other.goalMatch, goalMatch) ||
                other.goalMatch == goalMatch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nextMatch, goalMatch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextMatchViewModelImplCopyWith<_$NextMatchViewModelImpl> get copyWith =>
      __$$NextMatchViewModelImplCopyWithImpl<_$NextMatchViewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextMatchViewModelImplToJson(
      this,
    );
  }
}

abstract class _NextMatchViewModel implements NextMatchViewModel {
  const factory _NextMatchViewModel(
      {required final MatchModel nextMatch,
      required final GoalModel goalMatch}) = _$NextMatchViewModelImpl;

  factory _NextMatchViewModel.fromJson(Map<String, dynamic> json) =
      _$NextMatchViewModelImpl.fromJson;

  @override
  MatchModel get nextMatch;
  @override
  GoalModel get goalMatch;
  @override
  @JsonKey(ignore: true)
  _$$NextMatchViewModelImplCopyWith<_$NextMatchViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}