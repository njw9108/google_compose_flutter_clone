import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/posts_feed.dart';
import 'package:jet_news_clone/domain/repository/posts_repository.dart';

class GetPostFeedUseCase {
  PostsRepository repository;

  GetPostFeedUseCase(this.repository);

  Future<Result<PostsFeed>> call() async {
    final postsFeed = await repository.getPostsFeed();

    return postsFeed.when(success: (postsFeed) {
      return Result.success(postsFeed);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
