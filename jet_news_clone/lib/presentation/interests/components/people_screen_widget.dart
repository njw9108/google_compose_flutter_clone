import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/topic.dart';

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
    return ListView(
      children:
          people.where((element) => element.category == "people").map((e) {
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
