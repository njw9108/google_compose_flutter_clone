import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/model/posts_feed.dart';

class SearchPostUseCase {
  Future<Set<Post>> call(PostsFeed feed, String keyword) async {
    Set<Post> allPosts = {};
    allPosts.addAll(feed.recentPosts);
    allPosts.addAll(feed.popularPosts);
    allPosts.addAll(feed.recommendedPosts);
    allPosts.add(feed.highlightedPost);

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

    return result;
  }
}
