import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/model/posts_feed.dart';

abstract class PostRepository {
  //Get a specific JetNews post.
  Future<Result<Post>> getPost(String? postId);

  //Get JetNews posts.
  Future<Result<PostsFeed>> getPostsFeed();

  //Toggle a postId to be a favorite or not.
  void toggleFavorite(String postId);
}
