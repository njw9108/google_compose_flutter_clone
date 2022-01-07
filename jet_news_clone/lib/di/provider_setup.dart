import 'package:jet_news_clone/data/data_source/news_db_data_source.dart';
import 'package:jet_news_clone/data/repository/interest_repository_impl.dart';
import 'package:jet_news_clone/data/repository/local_db_post_favorite_repository_impl.dart';
import 'package:jet_news_clone/data/repository/post_repository_impl.dart';
import 'package:jet_news_clone/domain/use_case/get_interest_feed_use_case.dart';
import 'package:jet_news_clone/domain/use_case/get_post_feed_use_case.dart';
import 'package:jet_news_clone/domain/use_case/toggle_favorite_use_case.dart';
import 'package:jet_news_clone/presentation/interests/interest_view_model.dart';
import 'package:jet_news_clone/presentation/posts/posts_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  final db = await openDatabase(
    'favoritePost.db',
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE favoritePost (postId TEXT PRIMARY KEY)');
    },
  );

  final dataSource = NewsDBDataSource(db);
  final repository = LocalDBPostFavoriteRepositoryImpl(dataSource);

  List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<PostViewModel>(
      create: (context) => PostViewModel(
        getPostFeed: GetPostFeedUseCase(
          PostRepositoryImpl(),
        ),
        toggleFavorite: ToggleFavoriteUseCase(
          repository,
        ),
      ),
    ),
    ChangeNotifierProvider<InterestViewModel>(
      create: (context) => InterestViewModel(
        GetInterestFeedUseCase(
          InterestRepositoryImpl(),
        ),
      ),
    ),
  ];

  return viewModels;
}
