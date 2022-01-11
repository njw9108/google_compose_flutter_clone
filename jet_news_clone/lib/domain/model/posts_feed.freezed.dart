// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsFeed _$PostsFeedFromJson(Map<String, dynamic> json) {
  return _PostsFeed.fromJson(json);
}

/// @nodoc
class _$PostsFeedTearOff {
  const _$PostsFeedTearOff();

  _PostsFeed call(
      {required Post highlightedPost,
      required List<Post> recommendedPosts,
      required List<Post> popularPosts,
      required List<Post> recentPosts}) {
    return _PostsFeed(
      highlightedPost: highlightedPost,
      recommendedPosts: recommendedPosts,
      popularPosts: popularPosts,
      recentPosts: recentPosts,
    );
  }

  PostsFeed fromJson(Map<String, Object?> json) {
    return PostsFeed.fromJson(json);
  }
}

/// @nodoc
const $PostsFeed = _$PostsFeedTearOff();

/// @nodoc
mixin _$PostsFeed {
  Post get highlightedPost => throw _privateConstructorUsedError;
  List<Post> get recommendedPosts => throw _privateConstructorUsedError;
  List<Post> get popularPosts => throw _privateConstructorUsedError;
  List<Post> get recentPosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsFeedCopyWith<PostsFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsFeedCopyWith<$Res> {
  factory $PostsFeedCopyWith(PostsFeed value, $Res Function(PostsFeed) then) =
      _$PostsFeedCopyWithImpl<$Res>;
  $Res call(
      {Post highlightedPost,
      List<Post> recommendedPosts,
      List<Post> popularPosts,
      List<Post> recentPosts});

  $PostCopyWith<$Res> get highlightedPost;
}

/// @nodoc
class _$PostsFeedCopyWithImpl<$Res> implements $PostsFeedCopyWith<$Res> {
  _$PostsFeedCopyWithImpl(this._value, this._then);

  final PostsFeed _value;
  // ignore: unused_field
  final $Res Function(PostsFeed) _then;

  @override
  $Res call({
    Object? highlightedPost = freezed,
    Object? recommendedPosts = freezed,
    Object? popularPosts = freezed,
    Object? recentPosts = freezed,
  }) {
    return _then(_value.copyWith(
      highlightedPost: highlightedPost == freezed
          ? _value.highlightedPost
          : highlightedPost // ignore: cast_nullable_to_non_nullable
              as Post,
      recommendedPosts: recommendedPosts == freezed
          ? _value.recommendedPosts
          : recommendedPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      popularPosts: popularPosts == freezed
          ? _value.popularPosts
          : popularPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      recentPosts: recentPosts == freezed
          ? _value.recentPosts
          : recentPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }

  @override
  $PostCopyWith<$Res> get highlightedPost {
    return $PostCopyWith<$Res>(_value.highlightedPost, (value) {
      return _then(_value.copyWith(highlightedPost: value));
    });
  }
}

/// @nodoc
abstract class _$PostsFeedCopyWith<$Res> implements $PostsFeedCopyWith<$Res> {
  factory _$PostsFeedCopyWith(
          _PostsFeed value, $Res Function(_PostsFeed) then) =
      __$PostsFeedCopyWithImpl<$Res>;
  @override
  $Res call(
      {Post highlightedPost,
      List<Post> recommendedPosts,
      List<Post> popularPosts,
      List<Post> recentPosts});

  @override
  $PostCopyWith<$Res> get highlightedPost;
}

/// @nodoc
class __$PostsFeedCopyWithImpl<$Res> extends _$PostsFeedCopyWithImpl<$Res>
    implements _$PostsFeedCopyWith<$Res> {
  __$PostsFeedCopyWithImpl(_PostsFeed _value, $Res Function(_PostsFeed) _then)
      : super(_value, (v) => _then(v as _PostsFeed));

  @override
  _PostsFeed get _value => super._value as _PostsFeed;

  @override
  $Res call({
    Object? highlightedPost = freezed,
    Object? recommendedPosts = freezed,
    Object? popularPosts = freezed,
    Object? recentPosts = freezed,
  }) {
    return _then(_PostsFeed(
      highlightedPost: highlightedPost == freezed
          ? _value.highlightedPost
          : highlightedPost // ignore: cast_nullable_to_non_nullable
              as Post,
      recommendedPosts: recommendedPosts == freezed
          ? _value.recommendedPosts
          : recommendedPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      popularPosts: popularPosts == freezed
          ? _value.popularPosts
          : popularPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      recentPosts: recentPosts == freezed
          ? _value.recentPosts
          : recentPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostsFeed implements _PostsFeed {
  _$_PostsFeed(
      {required this.highlightedPost,
      required this.recommendedPosts,
      required this.popularPosts,
      required this.recentPosts});

  factory _$_PostsFeed.fromJson(Map<String, dynamic> json) =>
      _$$_PostsFeedFromJson(json);

  @override
  final Post highlightedPost;
  @override
  final List<Post> recommendedPosts;
  @override
  final List<Post> popularPosts;
  @override
  final List<Post> recentPosts;

  @override
  String toString() {
    return 'PostsFeed(highlightedPost: $highlightedPost, recommendedPosts: $recommendedPosts, popularPosts: $popularPosts, recentPosts: $recentPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsFeed &&
            const DeepCollectionEquality()
                .equals(other.highlightedPost, highlightedPost) &&
            const DeepCollectionEquality()
                .equals(other.recommendedPosts, recommendedPosts) &&
            const DeepCollectionEquality()
                .equals(other.popularPosts, popularPosts) &&
            const DeepCollectionEquality()
                .equals(other.recentPosts, recentPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(highlightedPost),
      const DeepCollectionEquality().hash(recommendedPosts),
      const DeepCollectionEquality().hash(popularPosts),
      const DeepCollectionEquality().hash(recentPosts));

  @JsonKey(ignore: true)
  @override
  _$PostsFeedCopyWith<_PostsFeed> get copyWith =>
      __$PostsFeedCopyWithImpl<_PostsFeed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsFeedToJson(this);
  }
}

abstract class _PostsFeed implements PostsFeed {
  factory _PostsFeed(
      {required Post highlightedPost,
      required List<Post> recommendedPosts,
      required List<Post> popularPosts,
      required List<Post> recentPosts}) = _$_PostsFeed;

  factory _PostsFeed.fromJson(Map<String, dynamic> json) =
      _$_PostsFeed.fromJson;

  @override
  Post get highlightedPost;
  @override
  List<Post> get recommendedPosts;
  @override
  List<Post> get popularPosts;
  @override
  List<Post> get recentPosts;
  @override
  @JsonKey(ignore: true)
  _$PostsFeedCopyWith<_PostsFeed> get copyWith =>
      throw _privateConstructorUsedError;
}
