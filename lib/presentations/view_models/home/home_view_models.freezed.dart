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
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  NextMatchViewModel get nextMatch => throw _privateConstructorUsedError;
  NewsViewModel get news => throw _privateConstructorUsedError;
  LiveMatchViewModel get liveMatch => throw _privateConstructorUsedError;
  TicketsViewModel get tickets => throw _privateConstructorUsedError;

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
      {String? id,
      String userId,
      NextMatchViewModel nextMatch,
      NewsViewModel news,
      LiveMatchViewModel liveMatch,
      TicketsViewModel tickets});

  $NextMatchViewModelCopyWith<$Res> get nextMatch;
  $NewsViewModelCopyWith<$Res> get news;
  $LiveMatchViewModelCopyWith<$Res> get liveMatch;
  $TicketsViewModelCopyWith<$Res> get tickets;
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
    Object? id = freezed,
    Object? userId = null,
    Object? nextMatch = null,
    Object? news = null,
    Object? liveMatch = null,
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nextMatch: null == nextMatch
          ? _value.nextMatch
          : nextMatch // ignore: cast_nullable_to_non_nullable
              as NextMatchViewModel,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsViewModel,
      liveMatch: null == liveMatch
          ? _value.liveMatch
          : liveMatch // ignore: cast_nullable_to_non_nullable
              as LiveMatchViewModel,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as TicketsViewModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NextMatchViewModelCopyWith<$Res> get nextMatch {
    return $NextMatchViewModelCopyWith<$Res>(_value.nextMatch, (value) {
      return _then(_value.copyWith(nextMatch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsViewModelCopyWith<$Res> get news {
    return $NewsViewModelCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LiveMatchViewModelCopyWith<$Res> get liveMatch {
    return $LiveMatchViewModelCopyWith<$Res>(_value.liveMatch, (value) {
      return _then(_value.copyWith(liveMatch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketsViewModelCopyWith<$Res> get tickets {
    return $TicketsViewModelCopyWith<$Res>(_value.tickets, (value) {
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
      {String? id,
      String userId,
      NextMatchViewModel nextMatch,
      NewsViewModel news,
      LiveMatchViewModel liveMatch,
      TicketsViewModel tickets});

  @override
  $NextMatchViewModelCopyWith<$Res> get nextMatch;
  @override
  $NewsViewModelCopyWith<$Res> get news;
  @override
  $LiveMatchViewModelCopyWith<$Res> get liveMatch;
  @override
  $TicketsViewModelCopyWith<$Res> get tickets;
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
    Object? id = freezed,
    Object? userId = null,
    Object? nextMatch = null,
    Object? news = null,
    Object? liveMatch = null,
    Object? tickets = null,
  }) {
    return _then(_$HomeViewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nextMatch: null == nextMatch
          ? _value.nextMatch
          : nextMatch // ignore: cast_nullable_to_non_nullable
              as NextMatchViewModel,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsViewModel,
      liveMatch: null == liveMatch
          ? _value.liveMatch
          : liveMatch // ignore: cast_nullable_to_non_nullable
              as LiveMatchViewModel,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as TicketsViewModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeViewModelImpl implements _HomeViewModel {
  const _$HomeViewModelImpl(
      {this.id,
      required this.userId,
      required this.nextMatch,
      required this.news,
      required this.liveMatch,
      required this.tickets});

  factory _$HomeViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeViewModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final NextMatchViewModel nextMatch;
  @override
  final NewsViewModel news;
  @override
  final LiveMatchViewModel liveMatch;
  @override
  final TicketsViewModel tickets;

  @override
  String toString() {
    return 'HomeViewModel(id: $id, userId: $userId, nextMatch: $nextMatch, news: $news, liveMatch: $liveMatch, tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nextMatch, nextMatch) ||
                other.nextMatch == nextMatch) &&
            (identical(other.news, news) || other.news == news) &&
            (identical(other.liveMatch, liveMatch) ||
                other.liveMatch == liveMatch) &&
            (identical(other.tickets, tickets) || other.tickets == tickets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, nextMatch, news, liveMatch, tickets);

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
      {final String? id,
      required final String userId,
      required final NextMatchViewModel nextMatch,
      required final NewsViewModel news,
      required final LiveMatchViewModel liveMatch,
      required final TicketsViewModel tickets}) = _$HomeViewModelImpl;

  factory _HomeViewModel.fromJson(Map<String, dynamic> json) =
      _$HomeViewModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  NextMatchViewModel get nextMatch;
  @override
  NewsViewModel get news;
  @override
  LiveMatchViewModel get liveMatch;
  @override
  TicketsViewModel get tickets;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewModelImplCopyWith<_$HomeViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
