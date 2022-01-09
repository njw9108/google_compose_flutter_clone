import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/interest_feed.dart';

abstract class InterestRepository {
  Future<Result<InterestFeed>> getInterestFeed();
}
