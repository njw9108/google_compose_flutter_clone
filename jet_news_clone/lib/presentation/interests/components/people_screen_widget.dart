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

class PeopleScreenWidget extends StatefulWidget {
  const PeopleScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PeopleScreenWidget> createState() => _PeopleScreenWidgetState();
}

class _PeopleScreenWidgetState extends State<PeopleScreenWidget> {
  bool isClicked = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: people.map((e) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                onTap: (){
                  setState(() {
                    isClicked = !isClicked;
                  });
                },
                leading: Image.asset('imgs/placeholder_1_1.png'),
                trailing: isClicked == false
                    ? const Icon(
                  Icons.add_circle_outline,
                  size: 35,
                )
                    : const Icon(
                  Icons.check_circle_outline,
                  size: 35,
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
