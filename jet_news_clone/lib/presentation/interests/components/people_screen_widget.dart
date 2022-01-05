import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/topic.dart';
import 'package:jet_news_clone/presentation/interests/interest_view_model.dart';
import 'package:provider/provider.dart';

class PeopleScreenWidget extends StatefulWidget {
  const PeopleScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PeopleScreenWidget> createState() => _PeopleScreenWidgetState();
}

class _PeopleScreenWidgetState extends State<PeopleScreenWidget> {
  Set<Topic> favoriteTopicSet = {};

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<InterestViewModel>();
    final state = viewModel.state;
    return state.feed == null
        ? const CircularProgressIndicator()
        : ListView(
            children: state.feed!.peopleTopic
                .where((element) => element.category == "people")
                .map((e) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
                ),
              );
            }).toList(),
          );
  }
}
