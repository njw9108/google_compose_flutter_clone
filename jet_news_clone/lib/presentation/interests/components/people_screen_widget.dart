import 'package:flutter/material.dart';

final List people = [
  "Kobalt Toral",
  "K'Kola Uvarek",
  "Kris Vriloc",
  "Grala Valdyr",
  "Kruel Valaxar",
  "L'Elij Venonn",
  "Kraag Solazarn",
  "Tava Targesh",
  "Kemarrin Muuda"
];

class PeopleScreenWidget extends StatelessWidget {
  const PeopleScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: people.map((e) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: Image.asset('imgs/placeholder_1_1.png'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 35,
                  ),
                ),
                title: Text(
                  e,
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
