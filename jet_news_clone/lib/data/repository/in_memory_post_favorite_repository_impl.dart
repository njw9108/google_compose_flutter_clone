import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/repository/posts_favorite_repository.dart';

class InMemoryPostFavoriteRepositoryImpl implements PostFavoriteRepository {
  //final Set<Post> _favoritePostSet = {};
  final Set<String> _favoritePostSet = {};

  @override
  Future<Set<String>> getFavoritePostsSet() async {
    return _favoritePostSet;
  }

  @override
  Future<void> add(Post post) async {
    _favoritePostSet.add(post.id);
  }

  @override
  Future<void> remove(Post post) async {
    _favoritePostSet.remove(post.id);
  }
}
