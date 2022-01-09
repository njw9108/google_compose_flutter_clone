import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/model/posts_feed.dart';
import 'package:jet_news_clone/ui/ui.dart';

part 'posts_state.freezed.dart';

part 'posts_state.g.dart';

@freezed
class PostsState with _$PostsState {
  factory PostsState({
    PostsFeed? feed,
    @Default(DrawerType.home) DrawerType selectedDrawer,
    @Default({}) Set<String> favoritePostSet,
    @Default({}) Set<Post> searchResults,
    @Default(true) bool isLoading,
  }) = _PostsState;

  factory PostsState.fromJson(Map<String, dynamic> json) =>
      _$PostsStateFromJson(json);
}
