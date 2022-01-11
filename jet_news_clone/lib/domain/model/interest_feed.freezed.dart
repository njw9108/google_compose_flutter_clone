// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interest_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InterestFeed _$InterestFeedFromJson(Map<String, dynamic> json) {
  return _InterestFeed.fromJson(json);
}

/// @nodoc
class _$InterestFeedTearOff {
  const _$InterestFeedTearOff();

  _InterestFeed call(
      {required List<Topic> peopleTopic,
      required List<Topic> publicationsTopic,
      required List<Topic> topicTopic}) {
    return _InterestFeed(
      peopleTopic: peopleTopic,
      publicationsTopic: publicationsTopic,
      topicTopic: topicTopic,
    );
  }

  InterestFeed fromJson(Map<String, Object?> json) {
    return InterestFeed.fromJson(json);
  }
}

/// @nodoc
const $InterestFeed = _$InterestFeedTearOff();

/// @nodoc
mixin _$InterestFeed {
  List<Topic> get peopleTopic => throw _privateConstructorUsedError;
  List<Topic> get publicationsTopic => throw _privateConstructorUsedError;
  List<Topic> get topicTopic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestFeedCopyWith<InterestFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestFeedCopyWith<$Res> {
  factory $InterestFeedCopyWith(
          InterestFeed value, $Res Function(InterestFeed) then) =
      _$InterestFeedCopyWithImpl<$Res>;
  $Res call(
      {List<Topic> peopleTopic,
      List<Topic> publicationsTopic,
      List<Topic> topicTopic});
}

/// @nodoc
class _$InterestFeedCopyWithImpl<$Res> implements $InterestFeedCopyWith<$Res> {
  _$InterestFeedCopyWithImpl(this._value, this._then);

  final InterestFeed _value;
  // ignore: unused_field
  final $Res Function(InterestFeed) _then;

  @override
  $Res call({
    Object? peopleTopic = freezed,
    Object? publicationsTopic = freezed,
    Object? topicTopic = freezed,
  }) {
    return _then(_value.copyWith(
      peopleTopic: peopleTopic == freezed
          ? _value.peopleTopic
          : peopleTopic // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      publicationsTopic: publicationsTopic == freezed
          ? _value.publicationsTopic
          : publicationsTopic // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      topicTopic: topicTopic == freezed
          ? _value.topicTopic
          : topicTopic // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc
abstract class _$InterestFeedCopyWith<$Res>
    implements $InterestFeedCopyWith<$Res> {
  factory _$InterestFeedCopyWith(
          _InterestFeed value, $Res Function(_InterestFeed) then) =
      __$InterestFeedCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Topic> peopleTopic,
      List<Topic> publicationsTopic,
      List<Topic> topicTopic});
}

/// @nodoc
class __$InterestFeedCopyWithImpl<$Res> extends _$InterestFeedCopyWithImpl<$Res>
    implements _$InterestFeedCopyWith<$Res> {
  __$InterestFeedCopyWithImpl(
      _InterestFeed _value, $Res Function(_InterestFeed) _then)
      : super(_value, (v) => _then(v as _InterestFeed));

  @override
  _InterestFeed get _value => super._value as _InterestFeed;

  @override
  $Res call({
    Object? peopleTopic = freezed,
    Object? publicationsTopic = freezed,
    Object? topicTopic = freezed,
  }) {
    return _then(_InterestFeed(
      peopleTopic: peopleTopic == freezed
          ? _value.peopleTopic
          : peopleTopic // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      publicationsTopic: publicationsTopic == freezed
          ? _value.publicationsTopic
          : publicationsTopic // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      topicTopic: topicTopic == freezed
          ? _value.topicTopic
          : topicTopic // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InterestFeed implements _InterestFeed {
  _$_InterestFeed(
      {required this.peopleTopic,
      required this.publicationsTopic,
      required this.topicTopic});

  factory _$_InterestFeed.fromJson(Map<String, dynamic> json) =>
      _$$_InterestFeedFromJson(json);

  @override
  final List<Topic> peopleTopic;
  @override
  final List<Topic> publicationsTopic;
  @override
  final List<Topic> topicTopic;

  @override
  String toString() {
    return 'InterestFeed(peopleTopic: $peopleTopic, publicationsTopic: $publicationsTopic, topicTopic: $topicTopic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InterestFeed &&
            const DeepCollectionEquality()
                .equals(other.peopleTopic, peopleTopic) &&
            const DeepCollectionEquality()
                .equals(other.publicationsTopic, publicationsTopic) &&
            const DeepCollectionEquality()
                .equals(other.topicTopic, topicTopic));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(peopleTopic),
      const DeepCollectionEquality().hash(publicationsTopic),
      const DeepCollectionEquality().hash(topicTopic));

  @JsonKey(ignore: true)
  @override
  _$InterestFeedCopyWith<_InterestFeed> get copyWith =>
      __$InterestFeedCopyWithImpl<_InterestFeed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InterestFeedToJson(this);
  }
}

abstract class _InterestFeed implements InterestFeed {
  factory _InterestFeed(
      {required List<Topic> peopleTopic,
      required List<Topic> publicationsTopic,
      required List<Topic> topicTopic}) = _$_InterestFeed;

  factory _InterestFeed.fromJson(Map<String, dynamic> json) =
      _$_InterestFeed.fromJson;

  @override
  List<Topic> get peopleTopic;
  @override
  List<Topic> get publicationsTopic;
  @override
  List<Topic> get topicTopic;
  @override
  @JsonKey(ignore: true)
  _$InterestFeedCopyWith<_InterestFeed> get copyWith =>
      throw _privateConstructorUsedError;
}
