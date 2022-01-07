import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/repository/posts_favorite_repository.dart';

class InMemoryPostFavoriteRepositoryImpl implements PostFavoriteRepository {
  final Set<Post> _favoritePostSet = {};

  @override
  Future<Result<Set<Post>>> getFavoritePostsSet() async {
    return Result.success(_favoritePostSet);
  }

  @override
  void add(Post post) {
    _favoritePostSet.add(post);
  }

  @override
  void remove(Post post) {
    _favoritePostSet.remove(post);
  }
}
