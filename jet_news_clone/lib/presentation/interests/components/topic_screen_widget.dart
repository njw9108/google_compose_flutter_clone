import 'package:flutter/material.dart';

final List android = [
  "Jetpack Compose",
  "Kotlin",
  "Jetpack",
];

final List programming = [
  "Kotlin",
  "Declarative UIs",
  "Java",
  "Unidirectional Data Flow",
  "C++",
];

final List technology = [
  "Pixel",
  "Google",
];

class TopicScreenWidget extends StatelessWidget {
  const TopicScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          ...android.map((e) {
            return Column(
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
            );
          }).toList(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Programming',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ...programming.map((e) {
            return Column(
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
            );
          }).toList(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Technology',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ...technology.map((e) {
            return Column(
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
            );
          }).toList(),
        ],
      ),
    );
  }
}
