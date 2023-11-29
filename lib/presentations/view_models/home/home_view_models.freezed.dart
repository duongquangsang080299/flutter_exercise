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
  UserModel? get userName => throw _privateConstructorUsedError;
  MatchModel? get nextMatch => throw _privateConstructorUsedError;
  List<MatchModel>? get news => throw _privateConstructorUsedError;
  TicketModel? get ticket => throw _privateConstructorUsedError;
  bool? get isPlaying => throw _privateConstructorUsedError;
  bool? get isPause => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;

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
      {UserModel? userName,
      MatchModel? nextMatch,
      List<MatchModel>? news,
      TicketModel? ticket,
      bool? isPlaying,
      bool? isPause,
      bool? isLoading});

  $UserModelCopyWith<$Res>? get userName;
  $MatchModelCopyWith<$Res>? get nextMatch;
  $TicketModelCopyWith<$Res>? get ticket;
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
    Object? userName = freezed,
    Object? nextMatch = freezed,
    Object? news = freezed,
    Object? ticket = freezed,
    Object? isPlaying = freezed,
    Object? isPause = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      nextMatch: freezed == nextMatch
          ? _value.nextMatch
          : nextMatch // ignore: cast_nullable_to_non_nullable
              as MatchModel?,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel?,
      isPlaying: freezed == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPause: freezed == isPause
          ? _value.isPause
          : isPause // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userName {
    if (_value.userName == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userName!, (value) {
      return _then(_value.copyWith(userName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchModelCopyWith<$Res>? get nextMatch {
    if (_value.nextMatch == null) {
      return null;
    }

    return $MatchModelCopyWith<$Res>(_value.nextMatch!, (value) {
      return _then(_value.copyWith(nextMatch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketModelCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $TicketModelCopyWith<$Res>(_value.ticket!, (value) {
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
      {UserModel? userName,
      MatchModel? nextMatch,
      List<MatchModel>? news,
      TicketModel? ticket,
      bool? isPlaying,
      bool? isPause,
      bool? isLoading});

  @override
  $UserModelCopyWith<$Res>? get userName;
  @override
  $MatchModelCopyWith<$Res>? get nextMatch;
  @override
  $TicketModelCopyWith<$Res>? get ticket;
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
    Object? userName = freezed,
    Object? nextMatch = freezed,
    Object? news = freezed,
    Object? ticket = freezed,
    Object? isPlaying = freezed,
    Object? isPause = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$HomeViewModelImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      nextMatch: freezed == nextMatch
          ? _value.nextMatch
          : nextMatch // ignore: cast_nullable_to_non_nullable
              as MatchModel?,
      news: freezed == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel?,
      isPlaying: freezed == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPause: freezed == isPause
          ? _value.isPause
          : isPause // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeViewModelImpl implements _HomeViewModel {
  const _$HomeViewModelImpl(
      {this.userName,
      this.nextMatch,
      final List<MatchModel>? news,
      this.ticket,
      this.isPlaying,
      this.isPause,
      this.isLoading})
      : _news = news;

  factory _$HomeViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeViewModelImplFromJson(json);

  @override
  final UserModel? userName;
  @override
  final MatchModel? nextMatch;
  final List<MatchModel>? _news;
  @override
  List<MatchModel>? get news {
    final value = _news;
    if (value == null) return null;
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TicketModel? ticket;
  @override
  final bool? isPlaying;
  @override
  final bool? isPause;
  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'HomeViewModel(userName: $userName, nextMatch: $nextMatch, news: $news, ticket: $ticket, isPlaying: $isPlaying, isPause: $isPause, isLoading: $isLoading)';
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
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isPause, isPause) || other.isPause == isPause) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      nextMatch,
      const DeepCollectionEquality().hash(_news),
      ticket,
      isPlaying,
      isPause,
      isLoading);

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
      {final UserModel? userName,
      final MatchModel? nextMatch,
      final List<MatchModel>? news,
      final TicketModel? ticket,
      final bool? isPlaying,
      final bool? isPause,
      final bool? isLoading}) = _$HomeViewModelImpl;

  factory _HomeViewModel.fromJson(Map<String, dynamic> json) =
      _$HomeViewModelImpl.fromJson;

  @override
  UserModel? get userName;
  @override
  MatchModel? get nextMatch;
  @override
  List<MatchModel>? get news;
  @override
  TicketModel? get ticket;
  @override
  bool? get isPlaying;
  @override
  bool? get isPause;
  @override
  bool? get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewModelImplCopyWith<_$HomeViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
