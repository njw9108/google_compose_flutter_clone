import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/repository/posts_favorite_repository.dart';

class ToggleFavoriteUseCase {
  PostFavoriteRepository repository;

  ToggleFavoriteUseCase(this.repository);

  // Future<Result<Set<Post>>> call(Post post) async {
  //   await _toggleFavoritePost(post);
  //   Set<Post> postSet = await repository.getFavoritePostsSet();
  //   return Result.success(postSet);
  // }
  Future<Result<Set<String>>> call(Post post) async {
    await _toggleFavoritePost(post);
    Set<String> postSet = await repository.getFavoritePostsSet();
    return Result.success(postSet);
  }

  Future<void> _toggleFavoritePost(Post post) async {
    Set<String> favoritePostSet = await repository.getFavoritePostsSet();

    if (favoritePostSet.contains(post.id)) {
      repository.remove(post);
    } else {
      repository.add(post);
    }
  }
}
