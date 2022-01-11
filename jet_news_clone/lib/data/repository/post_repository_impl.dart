import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/data/data_source/news_data_source.dart';
import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/model/posts_feed.dart';
import 'package:jet_news_clone/domain/repository/posts_repository.dart';

class PostRepositoryImpl implements PostsRepository {
  final NewsDataSource _dataSource = NewsDataSource();

  @override
  Future<Result<Post>> getPost(String? postId) {
    // TODO: implement getPost
    throw UnimplementedError();
  }

  @override
  Future<Result<PostsFeed>> getPostsFeed() {
    return _dataSource.getPostsFeed();
  }

  @override
  void toggleFavorite(String postId) {
    // TODO: implement toggleFavorite
  }
}
