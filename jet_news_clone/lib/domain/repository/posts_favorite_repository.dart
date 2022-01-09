import 'package:jet_news_clone/domain/model/post.dart';

abstract class PostFavoriteRepository {
  //Future<Set<Post>> getFavoritePostsSet();
  Future<Set<String>> getFavoritePostsSet();

  Future<void> remove(Post post);

  Future<void> add(Post post);
}
