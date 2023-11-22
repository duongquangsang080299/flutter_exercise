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
  UserModel get userName => throw _privateConstructorUsedError;
  MatchModel get nextMatch => throw _privateConstructorUsedError;
  List<MatchModel> get news => throw _privateConstructorUsedError;
  TicketModel get ticket => throw _privateConstructorUsedError;

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
      {UserModel userName,
      MatchModel nextMatch,
      List<MatchModel> news,
      TicketModel ticket});

  $UserModelCopyWith<$Res> get userName;
  $MatchModelCopyWith<$Res> get nextMatch;
  $TicketModelCopyWith<$Res> get ticket;
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
    Object? userName = null,
    Object? nextMatch = null,
    Object? news = null,
    Object? ticket = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserModel,
      nextMatch: null == nextMatch
          ? _value.nextMatch
          : nextMatch // ignore: cast_nullable_to_non_nullable
              as MatchModel,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userName {
    return $UserModelCopyWith<$Res>(_value.userName, (value) {
      return _then(_value.copyWith(userName: value) as $Val);
    });
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
  $TicketModelCopyWith<$Res> get ticket {
    return $TicketModelCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
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
      {UserModel userName,
      MatchModel nextMatch,
      List<MatchModel> news,
      TicketModel ticket});

  @override
  $UserModelCopyWith<$Res> get userName;
  @override
  $MatchModelCopyWith<$Res> get nextMatch;
  @override
  $TicketModelCopyWith<$Res> get ticket;
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
    Object? userName = null,
    Object? nextMatch = null,
    Object? news = null,
    Object? ticket = null,
  }) {
    return _then(_$HomeViewModelImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserModel,
      nextMatch: null == nextMatch
          ? _value.nextMatch
          : nextMatch // ignore: cast_nullable_to_non_nullable
              as MatchModel,
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeViewModelImpl implements _HomeViewModel {
  const _$HomeViewModelImpl(
      {required this.userName,
      required this.nextMatch,
      required final List<MatchModel> news,
      required this.ticket})
      : _news = news;

  factory _$HomeViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeViewModelImplFromJson(json);

  @override
  final UserModel userName;
  @override
  final MatchModel nextMatch;
  final List<MatchModel> _news;
  @override
  List<MatchModel> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  final TicketModel ticket;

  @override
  String toString() {
    return 'HomeViewModel(userName: $userName, nextMatch: $nextMatch, news: $news, ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewModelImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.nextMatch, nextMatch) ||
                other.nextMatch == nextMatch) &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, nextMatch,
      const DeepCollectionEquality().hash(_news), ticket);

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
      {required final UserModel userName,
      required final MatchModel nextMatch,
      required final List<MatchModel> news,
      required final TicketModel ticket}) = _$HomeViewModelImpl;

  factory _HomeViewModel.fromJson(Map<String, dynamic> json) =
      _$HomeViewModelImpl.fromJson;

  @override
  UserModel get userName;
  @override
  MatchModel get nextMatch;
  @override
  List<MatchModel> get news;
  @override
  TicketModel get ticket;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewModelImplCopyWith<_$HomeViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
