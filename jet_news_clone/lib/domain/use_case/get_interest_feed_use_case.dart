import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/interest_feed.dart';
import 'package:jet_news_clone/domain/repository/interest_repository.dart';

class GetInterestFeedUseCase {
  InterestRepository repository;

  GetInterestFeedUseCase(this.repository);

  Future<Result<InterestFeed>> call() async {
    final interestFeed = await repository.getInterestFeed();

    return interestFeed.when(success: (interestFeed) {
      return Result.success(interestFeed);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
