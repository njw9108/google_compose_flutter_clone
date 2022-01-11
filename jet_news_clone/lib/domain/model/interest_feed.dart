import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_news_clone/domain/model/topic.dart';

part 'interest_feed.freezed.dart';

part 'interest_feed.g.dart';

@freezed
class InterestFeed with _$InterestFeed {
  factory InterestFeed({
    required List<Topic> peopleTopic,
    required List<Topic> publicationsTopic,
    required List<Topic> topicTopic,
  }) = _InterestFeed;

  factory InterestFeed.fromJson(Map<String, dynamic> json) =>
      _$InterestFeedFromJson(json);
}
