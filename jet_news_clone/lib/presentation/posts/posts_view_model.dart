import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/use_case/get_post_feed_use_case.dart';
import 'package:jet_news_clone/domain/use_case/toggle_favorite_use_case.dart';
import 'package:jet_news_clone/presentation/posts/posts_event.dart';
import 'package:jet_news_clone/presentation/posts/posts_state.dart';
import 'package:jet_news_clone/ui/ui.dart';

class PostViewModel with ChangeNotifier {
  final GetPostFeedUseCase getPostFeed;
  final ToggleFavoriteUseCase toggleFavorite;

  PostViewModel({
    required this.getPostFeed,
    required this.toggleFavorite,
  });

  PostsState _state = PostsState();

  PostsState get state => _state;

  void fetchPosts() async {
    final result = await getPostFeed();
    result.when(success: (feed) {
      _state = state.copyWith(feed: feed);
    }, error: (message) {
      print(message);
    });
    notifyListeners();
  }

  void onDrawerSelectChange(DrawerType type) {
    _state = state.copyWith(selectedDrawer: type);
    notifyListeners();
  }

  void onEvent(PostsEvent event) {
    event.when(toggleFavoritePost: (post) async {
      final result = await toggleFavorite.call(post);
      result.when(success: (postSet) {
        _state = state.copyWith(
          favoritePostSet: postSet,
        );
      }, error: (message) {
        print(message);
      });
    });
    notifyListeners();
  }
}
