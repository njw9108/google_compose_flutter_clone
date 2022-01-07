import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/repository/posts_favorite_repository.dart';

class ToggleFavoriteUseCase {
  PostFavoriteRepository repository;

  ToggleFavoriteUseCase(this.repository);

  Future<Result<Set<String>>> call(Post post) async {
    //await _toggleFavoritePost(post);
    Set<String> favoritePostSet = await repository.getFavoritePostsSet();

    if (favoritePostSet.contains(post.id)) {
      await repository.remove(post);
    } else {
      await repository.add(post);
    }

    Set<String> postSet = await repository.getFavoritePostsSet();
    return Result.success(postSet);
  }

  Future<Set<String>> getFavoritePost() async {
    Set<String> favoritePostSet = await repository.getFavoritePostsSet();
    return favoritePostSet;
  }

  Future<void> _toggleFavoritePost(Post post) async {
    Set<String> favoritePostSet = await repository.getFavoritePostsSet();

    if (favoritePostSet.contains(post.id)) {
      await repository.remove(post);
    } else {
      await repository.add(post);
    }
  }
}
