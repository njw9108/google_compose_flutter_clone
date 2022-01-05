import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_news_clone/domain/model/interest_feed.dart';
import 'package:jet_news_clone/domain/model/topic.dart';

part 'interest_state.freezed.dart';

part 'interest_state.g.dart';

@freezed
class InterestState with _$InterestState {
  factory InterestState({
    InterestFeed? feed,
    @Default({}) Set<Topic> favoriteTopicSet,
  }) = _InterestState;

  factory InterestState.fromJson(Map<String, dynamic> json) =>
      _$InterestStateFromJson(json);
}
