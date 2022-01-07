import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/repository/posts_favorite_repository.dart';

class ToggleFavoriteUseCase {
  PostFavoriteRepository repository;

  ToggleFavoriteUseCase(this.repository);

  Future<Result<Set<Post>>> call(Post post) async {
    await _toggleFavoritePost(post);
    return await repository.getFavoritePostsSet();
  }

  Future<void> _toggleFavoritePost(Post post) async {
    Set<Post> favoritePostSet = {};
    final result = await repository.getFavoritePostsSet();
    result.when(
      success: (postSet) {
        favoritePostSet = postSet;
      },
      error: (message) {
        print(message);
      },
    );

    if (favoritePostSet.contains(post)) {
      repository.remove(post);
    } else {
      repository.add(post);
    }
  }
}
