import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/use_case/get_post_feed_use_case.dart';
import 'package:jet_news_clone/presentation/posts/posts_state.dart';
import 'package:jet_news_clone/ui/ui.dart';

class PostViewModel with ChangeNotifier {
  final GetPostFeedUseCase _getPostFeed;

  PostViewModel(this._getPostFeed);

  PostsState _state = PostsState();

  PostsState get state => _state;

  void fetchPosts() async {
    final result = await _getPostFeed();
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
}
