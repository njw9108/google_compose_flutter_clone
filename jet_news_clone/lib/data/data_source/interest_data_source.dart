import 'package:jet_news_clone/core/result.dart';
import 'package:jet_news_clone/domain/model/interest_feed.dart';
import 'package:jet_news_clone/domain/model/topic.dart';

class InterestDataSource {
  Future<Result<InterestFeed>> getInterestFeed() async {
    try {
      InterestFeed feed = InterestFeed(
        peopleTopic: people,
        publicationsTopic: publications,
        topicTopic: topics,
      );

      return Result.success(feed);
    } on Exception catch (e) {
      return Result.error(e.toString());
    }
  }
}

final List<Topic> people = [
  Topic(title: "Kobalt Toral", category: "people"),
  Topic(title: "K'Kola Uvarek", category: "people"),
  Topic(title: "Kris Vriloc", category: "people"),
  Topic(title: "Grala Valdyr", category: "people"),
  Topic(title: "Kruel Valaxar", category: "people"),
  Topic(title: "L'Elij Venonn", category: "people"),
  Topic(title: "Kraag Solazarn", category: "people"),
  Topic(title: "Tava Targesh", category: "people"),
  Topic(title: "Kemarrin Muuda", category: "people"),
];

final List<Topic> publications = [
  Topic(title: "Kotlin Vibe", category: "publications"),
  Topic(title: "Compose Mix", category: "publications"),
  Topic(title: "Compose Breakdown", category: "publications"),
  Topic(title: "Android Pursue", category: "publications"),
  Topic(title: "Kotlin Watchman", category: "publications"),
  Topic(title: "Jetpack Ark", category: "publications"),
  Topic(title: "Composeshack", category: "publications"),
  Topic(title: "Jetpack Point", category: "publications"),
  Topic(title: "Compose Tribune", category: "publications"),
];

final List<Topic> topics = [
  Topic(title: "Jetpack Compose", category: "Android"),
  Topic(title: "Kotlin", category: "Android"),
  Topic(title: "Jetpack", category: "Android"),
  Topic(title: "Kotlin", category: "Programming"),
  Topic(title: "Declarative UIs", category: "Programming"),
  Topic(title: "Java", category: "Programming"),
  Topic(title: "Unidirectional Data Flow", category: "Programming"),
  Topic(title: "C++", category: "Programming"),
  Topic(title: "Pixel", category: "Technology"),
  Topic(title: "Google", category: "Technology"),
];
