import 'package:flutter/material.dart';

final List publications = [
  "Kotlin Vibe",
  "Compose Mix",
  "Compose Breakdown",
  "Android Pursue",
  "Kotlin Watchman",
  "Jetpack Ark",
  "Composeshack",
  "Jetpack Point",
  "Compose Tribune"
];

class PublicationsScreenWidget extends StatefulWidget {
  const PublicationsScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PublicationsScreenWidget> createState() => _PublicationsScreenWidgetState();
}

class _PublicationsScreenWidgetState extends State<PublicationsScreenWidget> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: publications.map((e) {
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
