import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_news_clone/domain/model/topic.dart';

part 'interest_event.freezed.dart';

@freezed
class InterestEvent with _$InterestEvent {
  const factory InterestEvent.toggleTopic(Topic topic) = ToggleTopic;
}
