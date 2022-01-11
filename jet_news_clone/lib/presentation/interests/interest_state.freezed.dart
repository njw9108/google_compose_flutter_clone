// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interest_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InterestState _$InterestStateFromJson(Map<String, dynamic> json) {
  return _InterestState.fromJson(json);
}

/// @nodoc
class _$InterestStateTearOff {
  const _$InterestStateTearOff();

  _InterestState call(
      {InterestFeed? feed, Set<Topic> favoriteTopicSet = const {}}) {
    return _InterestState(
      feed: feed,
      favoriteTopicSet: favoriteTopicSet,
    );
  }

  InterestState fromJson(Map<String, Object?> json) {
    return InterestState.fromJson(json);
  }
}

/// @nodoc
const $InterestState = _$InterestStateTearOff();

/// @nodoc
mixin _$InterestState {
  InterestFeed? get feed => throw _privateConstructorUsedError;
  Set<Topic> get favoriteTopicSet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestStateCopyWith<InterestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestStateCopyWith<$Res> {
  factory $InterestStateCopyWith(
          InterestState value, $Res Function(InterestState) then) =
      _$InterestStateCopyWithImpl<$Res>;
  $Res call({InterestFeed? feed, Set<Topic> favoriteTopicSet});

  $InterestFeedCopyWith<$Res>? get feed;
}

/// @nodoc
class _$InterestStateCopyWithImpl<$Res>
    implements $InterestStateCopyWith<$Res> {
  _$InterestStateCopyWithImpl(this._value, this._then);

  final InterestState _value;
  // ignore: unused_field
  final $Res Function(InterestState) _then;

  @override
  $Res call({
    Object? feed = freezed,
    Object? favoriteTopicSet = freezed,
  }) {
    return _then(_value.copyWith(
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as InterestFeed?,
      favoriteTopicSet: favoriteTopicSet == freezed
          ? _value.favoriteTopicSet
          : favoriteTopicSet // ignore: cast_nullable_to_non_nullable
              as Set<Topic>,
    ));
  }

  @override
  $InterestFeedCopyWith<$Res>? get feed {
    if (_value.feed == null) {
      return null;
    }

    return $InterestFeedCopyWith<$Res>(_value.feed!, (value) {
      return _then(_value.copyWith(feed: value));
    });
  }
}

/// @nodoc
abstract class _$InterestStateCopyWith<$Res>
    implements $InterestStateCopyWith<$Res> {
  factory _$InterestStateCopyWith(
          _InterestState value, $Res Function(_InterestState) then) =
      __$InterestStateCopyWithImpl<$Res>;
  @override
  $Res call({InterestFeed? feed, Set<Topic> favoriteTopicSet});

  @override
  $InterestFeedCopyWith<$Res>? get feed;
}

/// @nodoc
class __$InterestStateCopyWithImpl<$Res>
    extends _$InterestStateCopyWithImpl<$Res>
    implements _$InterestStateCopyWith<$Res> {
  __$InterestStateCopyWithImpl(
      _InterestState _value, $Res Function(_InterestState) _then)
      : super(_value, (v) => _then(v as _InterestState));

  @override
  _InterestState get _value => super._value as _InterestState;

  @override
  $Res call({
    Object? feed = freezed,
    Object? favoriteTopicSet = freezed,
  }) {
    return _then(_InterestState(
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as InterestFeed?,
      favoriteTopicSet: favoriteTopicSet == freezed
          ? _value.favoriteTopicSet
          : favoriteTopicSet // ignore: cast_nullable_to_non_nullable
              as Set<Topic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InterestState implements _InterestState {
  _$_InterestState({this.feed, this.favoriteTopicSet = const {}});

  factory _$_InterestState.fromJson(Map<String, dynamic> json) =>
      _$$_InterestStateFromJson(json);

  @override
  final InterestFeed? feed;
  @JsonKey()
  @override
  final Set<Topic> favoriteTopicSet;

  @override
  String toString() {
    return 'InterestState(feed: $feed, favoriteTopicSet: $favoriteTopicSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InterestState &&
            const DeepCollectionEquality().equals(other.feed, feed) &&
            const DeepCollectionEquality()
                .equals(other.favoriteTopicSet, favoriteTopicSet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feed),
      const DeepCollectionEquality().hash(favoriteTopicSet));

  @JsonKey(ignore: true)
  @override
  _$InterestStateCopyWith<_InterestState> get copyWith =>
      __$InterestStateCopyWithImpl<_InterestState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InterestStateToJson(this);
  }
}

abstract class _InterestState implements InterestState {
  factory _InterestState({InterestFeed? feed, Set<Topic> favoriteTopicSet}) =
      _$_InterestState;

  factory _InterestState.fromJson(Map<String, dynamic> json) =
      _$_InterestState.fromJson;

  @override
  InterestFeed? get feed;
  @override
  Set<Topic> get favoriteTopicSet;
  @override
  @JsonKey(ignore: true)
  _$InterestStateCopyWith<_InterestState> get copyWith =>
      throw _privateConstructorUsedError;
}
