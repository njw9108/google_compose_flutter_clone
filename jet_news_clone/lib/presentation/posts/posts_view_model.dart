import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/post.dart';
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
  }) {
    final result = toggleFavorite.getFavoritePost();
    result.then((favoritePostSet) {
      _state = state.copyWith(
        favoritePostSet: favoritePostSet,
      );
    });
  }

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

  Future<void> searchPost(String keyword) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    Set<Post> allPosts = {};
    allPosts.addAll(state.feed!.recentPosts);
    allPosts.addAll(state.feed!.popularPosts);
    allPosts.addAll(state.feed!.recommendedPosts);
    allPosts.add(state.feed!.highlightedPost);

    Set<Post> posts = {};
    bool isSame;
    for (var source in allPosts) {
      if (posts.isEmpty) {
        posts.add(source);
        continue;
      }
      isSame = false;
      for (var target in posts) {
        if (target.title == source.title) {
          isSame = true;
        }
      }
      if (isSame == false) {
        posts.add(source);
      }
    }

    Set<Post> result = posts.where((post) {
      return post.title.contains(RegExp(keyword, caseSensitive: false));
    }).toSet();

    _state = state.copyWith(
      searchResults: result,
    );

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }

  void onDrawerSelectChange(DrawerType type) {
    _state = state.copyWith(selectedDrawer: type);
    notifyListeners();
  }

  void onEvent(PostsEvent event) async {
    await event.when(toggleFavoritePost: (post) async {
      final result = await toggleFavorite(post);
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
