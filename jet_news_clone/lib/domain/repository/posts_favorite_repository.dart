import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/post.dart';

abstract class PostFavoriteRepository {
  Future<Result<Set<Post>>> getFavoritePostsSet();

  void remove(Post post);

  void add(Post post);
}
