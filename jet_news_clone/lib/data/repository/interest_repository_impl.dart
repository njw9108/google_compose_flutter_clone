import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/data/data_source/interest_data_source.dart';
import 'package:jet_news_clone/domain/model/interest_feed.dart';
import 'package:jet_news_clone/domain/repository/interest_repository.dart';

class InterestRepositoryImpl implements InterestRepository {
  final InterestDataSource _dataSource = InterestDataSource();

  @override
  Future<Result<InterestFeed>> getInterestFeed() {
    return _dataSource.getInterestFeed();
  }
}
