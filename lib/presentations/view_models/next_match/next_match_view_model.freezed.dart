// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'next_match_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchDetailViewModel _$MatchDetailViewModelFromJson(Map<String, dynamic> json) {
  return _MatchDetailViewModel.fromJson(json);
}

/// @nodoc
mixin _$MatchDetailViewModel {
  MatchModel get matchDetail => throw _privateConstructorUsedError;
  GoalsModel get goalMatch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchDetailViewModelCopyWith<MatchDetailViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchDetailViewModelCopyWith<$Res> {
  factory $MatchDetailViewModelCopyWith(MatchDetailViewModel value,
          $Res Function(MatchDetailViewModel) then) =
      _$MatchDetailViewModelCopyWithImpl<$Res, MatchDetailViewModel>;
  @useResult
  $Res call({MatchModel matchDetail, GoalsModel goalMatch});

  $MatchModelCopyWith<$Res> get matchDetail;
  $GoalsModelCopyWith<$Res> get goalMatch;
}

/// @nodoc
class _$MatchDetailViewModelCopyWithImpl<$Res,
        $Val extends MatchDetailViewModel>
    implements $MatchDetailViewModelCopyWith<$Res> {
  _$MatchDetailViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchDetail = null,
    Object? goalMatch = null,
  }) {
    return _then(_value.copyWith(
      matchDetail: null == matchDetail
          ? _value.matchDetail
          : matchDetail // ignore: cast_nullable_to_non_nullable
              as MatchModel,
      goalMatch: null == goalMatch
          ? _value.goalMatch
          : goalMatch // ignore: cast_nullable_to_non_nullable
              as GoalsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchModelCopyWith<$Res> get matchDetail {
    return $MatchModelCopyWith<$Res>(_value.matchDetail, (value) {
      return _then(_value.copyWith(matchDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsModelCopyWith<$Res> get goalMatch {
    return $GoalsModelCopyWith<$Res>(_value.goalMatch, (value) {
      return _then(_value.copyWith(goalMatch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchDetailViewModelImplCopyWith<$Res>
    implements $MatchDetailViewModelCopyWith<$Res> {
  factory _$$MatchDetailViewModelImplCopyWith(_$MatchDetailViewModelImpl value,
          $Res Function(_$MatchDetailViewModelImpl) then) =
      __$$MatchDetailViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MatchModel matchDetail, GoalsModel goalMatch});

  @override
  $MatchModelCopyWith<$Res> get matchDetail;
  @override
  $GoalsModelCopyWith<$Res> get goalMatch;
}

/// @nodoc
class __$$MatchDetailViewModelImplCopyWithImpl<$Res>
    extends _$MatchDetailViewModelCopyWithImpl<$Res, _$MatchDetailViewModelImpl>
    implements _$$MatchDetailViewModelImplCopyWith<$Res> {
  __$$MatchDetailViewModelImplCopyWithImpl(_$MatchDetailViewModelImpl _value,
      $Res Function(_$MatchDetailViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchDetail = null,
    Object? goalMatch = null,
  }) {
    return _then(_$MatchDetailViewModelImpl(
      matchDetail: null == matchDetail
          ? _value.matchDetail
          : matchDetail // ignore: cast_nullable_to_non_nullable
              as MatchModel,
      goalMatch: null == goalMatch
          ? _value.goalMatch
          : goalMatch // ignore: cast_nullable_to_non_nullable
              as GoalsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchDetailViewModelImpl implements _MatchDetailViewModel {
  const _$MatchDetailViewModelImpl(
      {required this.matchDetail, required this.goalMatch});

  factory _$MatchDetailViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchDetailViewModelImplFromJson(json);

  @override
  final MatchModel matchDetail;
  @override
  final GoalsModel goalMatch;

  @override
  String toString() {
    return 'MatchDetailViewModel(matchDetail: $matchDetail, goalMatch: $goalMatch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchDetailViewModelImpl &&
            (identical(other.matchDetail, matchDetail) ||
                other.matchDetail == matchDetail) &&
            (identical(other.goalMatch, goalMatch) ||
                other.goalMatch == goalMatch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, matchDetail, goalMatch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchDetailViewModelImplCopyWith<_$MatchDetailViewModelImpl>
      get copyWith =>
          __$$MatchDetailViewModelImplCopyWithImpl<_$MatchDetailViewModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchDetailViewModelImplToJson(
      this,
    );
  }
}

abstract class _MatchDetailViewModel implements MatchDetailViewModel {
  const factory _MatchDetailViewModel(
      {required final MatchModel matchDetail,
      required final GoalsModel goalMatch}) = _$MatchDetailViewModelImpl;

  factory _MatchDetailViewModel.fromJson(Map<String, dynamic> json) =
      _$MatchDetailViewModelImpl.fromJson;

  @override
  MatchModel get matchDetail;
  @override
  GoalsModel get goalMatch;
  @override
  @JsonKey(ignore: true)
  _$$MatchDetailViewModelImplCopyWith<_$MatchDetailViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
