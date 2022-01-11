import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/repository/posts_repository.dart';

class GetPostUseCase {
  PostsRepository repository;

  GetPostUseCase(this.repository);

  Future<Result<Post>> call(String? postId) async {
    final post = await repository.getPost(postId);

    return post.when(success: (post) {
      return Result.success(post);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
