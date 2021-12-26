import 'package:jet_news_clone/domain/repository/posts_repository.dart';

class ToggleFavoriteUseCase {
  PostsRepository repository;

  ToggleFavoriteUseCase(this.repository);

  void call(String postId) {
    repository.toggleFavorite(postId);
  }
}
