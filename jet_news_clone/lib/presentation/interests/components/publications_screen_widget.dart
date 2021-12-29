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

class PublicationsScreenWidget extends StatelessWidget {
  const PublicationsScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: publications.map((e) {
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
