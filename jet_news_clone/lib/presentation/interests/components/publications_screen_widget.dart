import 'package:flutter/material.dart';
import 'package:jet_news_clone/presentation/interests/interest_event.dart';
import 'package:jet_news_clone/presentation/interests/interest_view_model.dart';
import 'package:provider/provider.dart';

class PublicationsScreenWidget extends StatefulWidget {
  const PublicationsScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PublicationsScreenWidget> createState() =>
      _PublicationsScreenWidgetState();
}

class _PublicationsScreenWidgetState extends State<PublicationsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<InterestViewModel>();
    final state = viewModel.state;
    return state.feed == null
        ? const CircularProgressIndicator()
        : ListView(
            children: state.feed!.publicationsTopic
                .where((element) => element.category == "publications")
                .map((e) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        viewModel.onEvent(ToggleTopic(e));
                      },
                      leading: Image.asset('imgs/placeholder_1_1.png'),
                      trailing: state.favoriteTopicSet.contains(e) == false
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
