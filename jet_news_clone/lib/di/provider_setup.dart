import 'package:jet_news_clone/data/repository/in_memory_post_favorite_repository_impl.dart';
import 'package:jet_news_clone/data/repository/interest_repository_impl.dart';
import 'package:jet_news_clone/data/repository/post_repository_impl.dart';
import 'package:jet_news_clone/domain/use_case/get_interest_feed_use_case.dart';
import 'package:jet_news_clone/domain/use_case/get_post_feed_use_case.dart';
import 'package:jet_news_clone/domain/use_case/toggle_favorite_use_case.dart';
import 'package:jet_news_clone/presentation/interests/interest_view_model.dart';
import 'package:jet_news_clone/presentation/posts/posts_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<PostViewModel>(
    create: (context) => PostViewModel(
      getPostFeed: GetPostFeedUseCase(
        PostRepositoryImpl(),
      ),
      toggleFavorite: ToggleFavoriteUseCase(
        InMemoryPostFavoriteRepositoryImpl(),
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
