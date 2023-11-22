// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeViewModel _$HomeViewModelFromJson(Map<String, dynamic> json) {
  return _HomeViewModel.fromJson(json);
}

/// @nodoc
mixin _$HomeViewModel {
  UserModel get nameUser => throw _privateConstructorUsedError;
  MatchModel get match => throw _privateConstructorUsedError;
  TeamModel get team => throw _privateConstructorUsedError;
  ResultModel get reulstOfMatch => throw _privateConstructorUsedError;
  TicketModel get tickets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeViewModelCopyWith<HomeViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewModelCopyWith<$Res> {
  factory $HomeViewModelCopyWith(
          HomeViewModel value, $Res Function(HomeViewModel) then) =
      _$HomeViewModelCopyWithImpl<$Res, HomeViewModel>;
  @useResult
  $Res call(
      {UserModel nameUser,
      MatchModel match,
      TeamModel team,
      ResultModel reulstOfMatch,
      TicketModel tickets});

  $UserModelCopyWith<$Res> get nameUser;
  $MatchModelCopyWith<$Res> get match;
  $TeamModelCopyWith<$Res> get team;
  $ResultModelCopyWith<$Res> get reulstOfMatch;
  $TicketModelCopyWith<$Res> get tickets;
}

/// @nodoc
class _$HomeViewModelCopyWithImpl<$Res, $Val extends HomeViewModel>
    implements $HomeViewModelCopyWith<$Res> {
  _$HomeViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameUser = null,
    Object? match = null,
    Object? team = null,
    Object? reulstOfMatch = null,
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      nameUser: null == nameUser
          ? _value.nameUser
          : nameUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as MatchModel,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      reulstOfMatch: null == reulstOfMatch
          ? _value.reulstOfMatch
          : reulstOfMatch // ignore: cast_nullable_to_non_nullable
              as ResultModel,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as TicketModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get nameUser {
    return $UserModelCopyWith<$Res>(_value.nameUser, (value) {
      return _then(_value.copyWith(nameUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchModelCopyWith<$Res> get match {
    return $MatchModelCopyWith<$Res>(_value.match, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get team {
    return $TeamModelCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultModelCopyWith<$Res> get reulstOfMatch {
    return $ResultModelCopyWith<$Res>(_value.reulstOfMatch, (value) {
      return _then(_value.copyWith(reulstOfMatch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketModelCopyWith<$Res> get tickets {
    return $TicketModelCopyWith<$Res>(_value.tickets, (value) {
      return _then(_value.copyWith(tickets: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeViewModelImplCopyWith<$Res>
    implements $HomeViewModelCopyWith<$Res> {
  factory _$$HomeViewModelImplCopyWith(
          _$HomeViewModelImpl value, $Res Function(_$HomeViewModelImpl) then) =
      __$$HomeViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel nameUser,
      MatchModel match,
      TeamModel team,
      ResultModel reulstOfMatch,
      TicketModel tickets});

  @override
  $UserModelCopyWith<$Res> get nameUser;
  @override
  $MatchModelCopyWith<$Res> get match;
  @override
  $TeamModelCopyWith<$Res> get team;
  @override
  $ResultModelCopyWith<$Res> get reulstOfMatch;
  @override
  $TicketModelCopyWith<$Res> get tickets;
}

/// @nodoc
class __$$HomeViewModelImplCopyWithImpl<$Res>
    extends _$HomeViewModelCopyWithImpl<$Res, _$HomeViewModelImpl>
    implements _$$HomeViewModelImplCopyWith<$Res> {
  __$$HomeViewModelImplCopyWithImpl(
      _$HomeViewModelImpl _value, $Res Function(_$HomeViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameUser = null,
    Object? match = null,
    Object? team = null,
    Object? reulstOfMatch = null,
    Object? tickets = null,
  }) {
    return _then(_$HomeViewModelImpl(
      nameUser: null == nameUser
          ? _value.nameUser
          : nameUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as MatchModel,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      reulstOfMatch: null == reulstOfMatch
          ? _value.reulstOfMatch
          : reulstOfMatch // ignore: cast_nullable_to_non_nullable
              as ResultModel,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as TicketModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeViewModelImpl implements _HomeViewModel {
  const _$HomeViewModelImpl(
      {required this.nameUser,
      required this.match,
      required this.team,
      required this.reulstOfMatch,
      required this.tickets});

  factory _$HomeViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeViewModelImplFromJson(json);

  @override
  final UserModel nameUser;
  @override
  final MatchModel match;
  @override
  final TeamModel team;
  @override
  final ResultModel reulstOfMatch;
  @override
  final TicketModel tickets;

  @override
  String toString() {
    return 'HomeViewModel(nameUser: $nameUser, match: $match, team: $team, reulstOfMatch: $reulstOfMatch, tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewModelImpl &&
            (identical(other.nameUser, nameUser) ||
                other.nameUser == nameUser) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.reulstOfMatch, reulstOfMatch) ||
                other.reulstOfMatch == reulstOfMatch) &&
            (identical(other.tickets, tickets) || other.tickets == tickets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nameUser, match, team, reulstOfMatch, tickets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewModelImplCopyWith<_$HomeViewModelImpl> get copyWith =>
      __$$HomeViewModelImplCopyWithImpl<_$HomeViewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeViewModelImplToJson(
      this,
    );
  }
}

abstract class _HomeViewModel implements HomeViewModel {
  const factory _HomeViewModel(
      {required final UserModel nameUser,
      required final MatchModel match,
      required final TeamModel team,
      required final ResultModel reulstOfMatch,
      required final TicketModel tickets}) = _$HomeViewModelImpl;

  factory _HomeViewModel.fromJson(Map<String, dynamic> json) =
      _$HomeViewModelImpl.fromJson;

  @override
  UserModel get nameUser;
  @override
  MatchModel get match;
  @override
  TeamModel get team;
  @override
  ResultModel get reulstOfMatch;
  @override
  TicketModel get tickets;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewModelImplCopyWith<_$HomeViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
