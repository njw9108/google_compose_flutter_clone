// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsState _$PostsStateFromJson(Map<String, dynamic> json) {
  return _PostsState.fromJson(json);
}

/// @nodoc
class _$PostsStateTearOff {
  const _$PostsStateTearOff();

  _PostsState call(
      {PostsFeed? feed,
      DrawerType selectedDrawer = DrawerType.home,
      Set<String> favoritePostSet = const {},
      Set<Post> searchResults = const {},
      bool isLoading = true}) {
    return _PostsState(
      feed: feed,
      selectedDrawer: selectedDrawer,
      favoritePostSet: favoritePostSet,
      searchResults: searchResults,
      isLoading: isLoading,
    );
  }

  PostsState fromJson(Map<String, Object?> json) {
    return PostsState.fromJson(json);
  }
}

/// @nodoc
const $PostsState = _$PostsStateTearOff();

/// @nodoc
mixin _$PostsState {
  PostsFeed? get feed => throw _privateConstructorUsedError;
  DrawerType get selectedDrawer => throw _privateConstructorUsedError;
  Set<String> get favoritePostSet => throw _privateConstructorUsedError;
  Set<Post> get searchResults => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res>;
  $Res call(
      {PostsFeed? feed,
      DrawerType selectedDrawer,
      Set<String> favoritePostSet,
      Set<Post> searchResults,
      bool isLoading});

  $PostsFeedCopyWith<$Res>? get feed;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res> implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  final PostsState _value;
  // ignore: unused_field
  final $Res Function(PostsState) _then;

  @override
  $Res call({
    Object? feed = freezed,
    Object? selectedDrawer = freezed,
    Object? favoritePostSet = freezed,
    Object? searchResults = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as PostsFeed?,
      selectedDrawer: selectedDrawer == freezed
          ? _value.selectedDrawer
          : selectedDrawer // ignore: cast_nullable_to_non_nullable
              as DrawerType,
      favoritePostSet: favoritePostSet == freezed
          ? _value.favoritePostSet
          : favoritePostSet // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as Set<Post>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PostsFeedCopyWith<$Res>? get feed {
    if (_value.feed == null) {
      return null;
    }

    return $PostsFeedCopyWith<$Res>(_value.feed!, (value) {
      return _then(_value.copyWith(feed: value));
    });
  }
}

/// @nodoc
abstract class _$PostsStateCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$PostsStateCopyWith(
          _PostsState value, $Res Function(_PostsState) then) =
      __$PostsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PostsFeed? feed,
      DrawerType selectedDrawer,
      Set<String> favoritePostSet,
      Set<Post> searchResults,
      bool isLoading});

  @override
  $PostsFeedCopyWith<$Res>? get feed;
}

/// @nodoc
class __$PostsStateCopyWithImpl<$Res> extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsStateCopyWith<$Res> {
  __$PostsStateCopyWithImpl(
      _PostsState _value, $Res Function(_PostsState) _then)
      : super(_value, (v) => _then(v as _PostsState));

  @override
  _PostsState get _value => super._value as _PostsState;

  @override
  $Res call({
    Object? feed = freezed,
    Object? selectedDrawer = freezed,
    Object? favoritePostSet = freezed,
    Object? searchResults = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_PostsState(
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as PostsFeed?,
      selectedDrawer: selectedDrawer == freezed
          ? _value.selectedDrawer
          : selectedDrawer // ignore: cast_nullable_to_non_nullable
              as DrawerType,
      favoritePostSet: favoritePostSet == freezed
          ? _value.favoritePostSet
          : favoritePostSet // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as Set<Post>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostsState implements _PostsState {
  _$_PostsState(
      {this.feed,
      this.selectedDrawer = DrawerType.home,
      this.favoritePostSet = const {},
      this.searchResults = const {},
      this.isLoading = true});

  factory _$_PostsState.fromJson(Map<String, dynamic> json) =>
      _$$_PostsStateFromJson(json);

  @override
  final PostsFeed? feed;
  @JsonKey()
  @override
  final DrawerType selectedDrawer;
  @JsonKey()
  @override
  final Set<String> favoritePostSet;
  @JsonKey()
  @override
  final Set<Post> searchResults;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PostsState(feed: $feed, selectedDrawer: $selectedDrawer, favoritePostSet: $favoritePostSet, searchResults: $searchResults, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsState &&
            const DeepCollectionEquality().equals(other.feed, feed) &&
            const DeepCollectionEquality()
                .equals(other.selectedDrawer, selectedDrawer) &&
            const DeepCollectionEquality()
                .equals(other.favoritePostSet, favoritePostSet) &&
            const DeepCollectionEquality()
                .equals(other.searchResults, searchResults) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feed),
      const DeepCollectionEquality().hash(selectedDrawer),
      const DeepCollectionEquality().hash(favoritePostSet),
      const DeepCollectionEquality().hash(searchResults),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$PostsStateCopyWith<_PostsState> get copyWith =>
      __$PostsStateCopyWithImpl<_PostsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsStateToJson(this);
  }
}

abstract class _PostsState implements PostsState {
  factory _PostsState(
      {PostsFeed? feed,
      DrawerType selectedDrawer,
      Set<String> favoritePostSet,
      Set<Post> searchResults,
      bool isLoading}) = _$_PostsState;

  factory _PostsState.fromJson(Map<String, dynamic> json) =
      _$_PostsState.fromJson;

  @override
  PostsFeed? get feed;
  @override
  DrawerType get selectedDrawer;
  @override
  Set<String> get favoritePostSet;
  @override
  Set<Post> get searchResults;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$PostsStateCopyWith<_PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}
