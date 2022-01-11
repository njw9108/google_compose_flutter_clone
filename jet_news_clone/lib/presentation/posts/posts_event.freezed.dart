// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostsEventTearOff {
  const _$PostsEventTearOff();

  ToggleFavoritePost toggleFavoritePost(Post post) {
    return ToggleFavoritePost(
      post,
    );
  }
}

/// @nodoc
const $PostsEvent = _$PostsEventTearOff();

/// @nodoc
mixin _$PostsEvent {
  Post get post => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) toggleFavoritePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? toggleFavoritePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? toggleFavoritePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFavoritePost value) toggleFavoritePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleFavoritePost value)? toggleFavoritePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFavoritePost value)? toggleFavoritePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsEventCopyWith<PostsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsEventCopyWith<$Res> {
  factory $PostsEventCopyWith(
          PostsEvent value, $Res Function(PostsEvent) then) =
      _$PostsEventCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$PostsEventCopyWithImpl<$Res> implements $PostsEventCopyWith<$Res> {
  _$PostsEventCopyWithImpl(this._value, this._then);

  final PostsEvent _value;
  // ignore: unused_field
  final $Res Function(PostsEvent) _then;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
abstract class $ToggleFavoritePostCopyWith<$Res>
    implements $PostsEventCopyWith<$Res> {
  factory $ToggleFavoritePostCopyWith(
          ToggleFavoritePost value, $Res Function(ToggleFavoritePost) then) =
      _$ToggleFavoritePostCopyWithImpl<$Res>;
  @override
  $Res call({Post post});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$ToggleFavoritePostCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res>
    implements $ToggleFavoritePostCopyWith<$Res> {
  _$ToggleFavoritePostCopyWithImpl(
      ToggleFavoritePost _value, $Res Function(ToggleFavoritePost) _then)
      : super(_value, (v) => _then(v as ToggleFavoritePost));

  @override
  ToggleFavoritePost get _value => super._value as ToggleFavoritePost;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(ToggleFavoritePost(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$ToggleFavoritePost implements ToggleFavoritePost {
  const _$ToggleFavoritePost(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostsEvent.toggleFavoritePost(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToggleFavoritePost &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  $ToggleFavoritePostCopyWith<ToggleFavoritePost> get copyWith =>
      _$ToggleFavoritePostCopyWithImpl<ToggleFavoritePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) toggleFavoritePost,
  }) {
    return toggleFavoritePost(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? toggleFavoritePost,
  }) {
    return toggleFavoritePost?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? toggleFavoritePost,
    required TResult orElse(),
  }) {
    if (toggleFavoritePost != null) {
      return toggleFavoritePost(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFavoritePost value) toggleFavoritePost,
  }) {
    return toggleFavoritePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleFavoritePost value)? toggleFavoritePost,
  }) {
    return toggleFavoritePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFavoritePost value)? toggleFavoritePost,
    required TResult orElse(),
  }) {
    if (toggleFavoritePost != null) {
      return toggleFavoritePost(this);
    }
    return orElse();
  }
}

abstract class ToggleFavoritePost implements PostsEvent {
  const factory ToggleFavoritePost(Post post) = _$ToggleFavoritePost;

  @override
  Post get post;
  @override
  @JsonKey(ignore: true)
  $ToggleFavoritePostCopyWith<ToggleFavoritePost> get copyWith =>
      throw _privateConstructorUsedError;
}
