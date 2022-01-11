// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interest_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InterestEventTearOff {
  const _$InterestEventTearOff();

  ToggleTopic toggleTopic(Topic topic) {
    return ToggleTopic(
      topic,
    );
  }
}

/// @nodoc
const $InterestEvent = _$InterestEventTearOff();

/// @nodoc
mixin _$InterestEvent {
  Topic get topic => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) toggleTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Topic topic)? toggleTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? toggleTopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleTopic value) toggleTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleTopic value)? toggleTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleTopic value)? toggleTopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InterestEventCopyWith<InterestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestEventCopyWith<$Res> {
  factory $InterestEventCopyWith(
          InterestEvent value, $Res Function(InterestEvent) then) =
      _$InterestEventCopyWithImpl<$Res>;
  $Res call({Topic topic});

  $TopicCopyWith<$Res> get topic;
}

/// @nodoc
class _$InterestEventCopyWithImpl<$Res>
    implements $InterestEventCopyWith<$Res> {
  _$InterestEventCopyWithImpl(this._value, this._then);

  final InterestEvent _value;
  // ignore: unused_field
  final $Res Function(InterestEvent) _then;

  @override
  $Res call({
    Object? topic = freezed,
  }) {
    return _then(_value.copyWith(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }

  @override
  $TopicCopyWith<$Res> get topic {
    return $TopicCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value));
    });
  }
}

/// @nodoc
abstract class $ToggleTopicCopyWith<$Res>
    implements $InterestEventCopyWith<$Res> {
  factory $ToggleTopicCopyWith(
          ToggleTopic value, $Res Function(ToggleTopic) then) =
      _$ToggleTopicCopyWithImpl<$Res>;
  @override
  $Res call({Topic topic});

  @override
  $TopicCopyWith<$Res> get topic;
}

/// @nodoc
class _$ToggleTopicCopyWithImpl<$Res> extends _$InterestEventCopyWithImpl<$Res>
    implements $ToggleTopicCopyWith<$Res> {
  _$ToggleTopicCopyWithImpl(
      ToggleTopic _value, $Res Function(ToggleTopic) _then)
      : super(_value, (v) => _then(v as ToggleTopic));

  @override
  ToggleTopic get _value => super._value as ToggleTopic;

  @override
  $Res call({
    Object? topic = freezed,
  }) {
    return _then(ToggleTopic(
      topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$ToggleTopic implements ToggleTopic {
  const _$ToggleTopic(this.topic);

  @override
  final Topic topic;

  @override
  String toString() {
    return 'InterestEvent.toggleTopic(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToggleTopic &&
            const DeepCollectionEquality().equals(other.topic, topic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(topic));

  @JsonKey(ignore: true)
  @override
  $ToggleTopicCopyWith<ToggleTopic> get copyWith =>
      _$ToggleTopicCopyWithImpl<ToggleTopic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) toggleTopic,
  }) {
    return toggleTopic(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Topic topic)? toggleTopic,
  }) {
    return toggleTopic?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? toggleTopic,
    required TResult orElse(),
  }) {
    if (toggleTopic != null) {
      return toggleTopic(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleTopic value) toggleTopic,
  }) {
    return toggleTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleTopic value)? toggleTopic,
  }) {
    return toggleTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleTopic value)? toggleTopic,
    required TResult orElse(),
  }) {
    if (toggleTopic != null) {
      return toggleTopic(this);
    }
    return orElse();
  }
}

abstract class ToggleTopic implements InterestEvent {
  const factory ToggleTopic(Topic topic) = _$ToggleTopic;

  @override
  Topic get topic;
  @override
  @JsonKey(ignore: true)
  $ToggleTopicCopyWith<ToggleTopic> get copyWith =>
      throw _privateConstructorUsedError;
}
