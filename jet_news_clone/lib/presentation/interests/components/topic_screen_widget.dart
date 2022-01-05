import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/topic.dart';
import 'package:jet_news_clone/presentation/interests/interest_view_model.dart';
import 'package:provider/provider.dart';

class TopicScreenWidget extends StatefulWidget {
  const TopicScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TopicScreenWidget> createState() => _TopicScreenWidgetState();
}

class _TopicScreenWidgetState extends State<TopicScreenWidget> {
  Set<Topic> favoriteTopicSet = {};

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<InterestViewModel>();
    final state = viewModel.state;
    return state.feed == null
        ? const CircularProgressIndicator()
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'Android',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ...state.feed!.topicTopic
                    .where((element) => element.category == "Android")
                    .map((e) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          setState(() {
                            if (favoriteTopicSet.contains(e)) {
                              favoriteTopicSet.remove(e);
                            } else {
                              favoriteTopicSet.add(e);
                            }
                          });
                        },
                        leading: Image.asset('imgs/placeholder_1_1.png'),
                        trailing: favoriteTopicSet.contains(e) == false
                            ? const Icon(
                                Icons.add_circle_outline,
                                size: 35,
                              )
                            : const Icon(
                                Icons.check_circle_outline,
                                size: 35,
                              ),
                        title: Text(
                          e.title,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      )
                    ],
                  );
                }).toList(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'Programming',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ...state.feed!.topicTopic
                    .where((element) => element.category == "Programming")
                    .map((e) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          setState(() {
                            if (favoriteTopicSet.contains(e)) {
                              favoriteTopicSet.remove(e);
                            } else {
                              favoriteTopicSet.add(e);
                            }
                          });
                        },
                        leading: Image.asset('imgs/placeholder_1_1.png'),
                        trailing: favoriteTopicSet.contains(e) == false
                            ? const Icon(
                                Icons.add_circle_outline,
                                size: 35,
                              )
                            : const Icon(
                                Icons.check_circle_outline,
                                size: 35,
                              ),
                        title: Text(
                          e.title,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      )
                    ],
                  );
                }).toList(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'Technology',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ...state.feed!.topicTopic
                    .where((element) => element.category == "Technology")
                    .map((e) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          setState(() {
                            if (favoriteTopicSet.contains(e)) {
                              favoriteTopicSet.remove(e);
                            } else {
                              favoriteTopicSet.add(e);
                            }
                          });
                        },
                        leading: Image.asset('imgs/placeholder_1_1.png'),
                        trailing: favoriteTopicSet.contains(e) == false
                            ? const Icon(
                                Icons.add_circle_outline,
                                size: 35,
                              )
                            : const Icon(
                                Icons.check_circle_outline,
                                size: 35,
                              ),
                        title: Text(
                          e.title,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      )
                    ],
                  );
                }).toList(),
              ],
            ),
          );
  }
}
