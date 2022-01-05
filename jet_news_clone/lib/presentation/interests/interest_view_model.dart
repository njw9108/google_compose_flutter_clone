import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/topic.dart';
import 'package:jet_news_clone/domain/use_case/get_interest_feed_use_case.dart';
import 'package:jet_news_clone/presentation/interests/interest_event.dart';
import 'package:jet_news_clone/presentation/interests/interest_state.dart';

class InterestViewModel with ChangeNotifier {
  final GetInterestFeedUseCase _getInterestFeed;

  InterestViewModel(this._getInterestFeed) {
    fetchInterest();
  }

  InterestState _state = InterestState();

  InterestState get state => _state;

  void fetchInterest() async {
    final result = await _getInterestFeed();
    result.when(success: (feed) {
      _state = state.copyWith(feed: feed);
    }, error: (message) {
      print(message);
    });
    notifyListeners();
  }

  void onEvent(InterestEvent event) {
    event.when(toggleTopic: (topic) {
      _toggleTopic(topic);
    });
    notifyListeners();
  }

  void _toggleTopic(Topic topic) {
    Set<Topic> result = {};
    result = state.favoriteTopicSet;

    if (state.favoriteTopicSet.contains(topic)) {
      _state = state.copyWith(favoriteTopicSet: result..remove(topic));
    } else {
      _state = state.copyWith(favoriteTopicSet: result  ..add(topic));
    }
  }
}
