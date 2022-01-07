import 'package:jet_news_clone/data/data_source/news_db_data_source.dart';
import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/repository/posts_favorite_repository.dart';

class LocalDBPostFavoriteRepositoryImpl implements PostFavoriteRepository {
  final NewsDBDataSource _dataSource;

  LocalDBPostFavoriteRepositoryImpl(this._dataSource);

  @override
  Future<Set<String>> getFavoritePostsSet() async {
    return await _dataSource.getFavoritePostsSet();
  }

  @override
  Future<void> add(Post post) async {
    await _dataSource.add(post);
  }

  @override
  Future<void> remove(Post post) async {
    await _dataSource.remove(post);
  }
}
