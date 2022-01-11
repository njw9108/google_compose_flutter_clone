import 'package:flutter/material.dart';
import 'package:jet_chat_clone_2/domain/model/user_profile.dart';

class EditProfileScreen extends StatelessWidget {
  final UserProfile userProfile;

  const EditProfileScreen({
    Key? key,
    required this.userProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 40.0,
                bottom: 16,
              ),
              child: SizedBox(
                height: 400,
                width: 400,
                child: CircleAvatar(
                  backgroundImage: AssetImage(userProfile.userImageUrl),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              child: Text(
                userProfile.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              child: Text(
                userProfile.position,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              child: Text(
                'Display Name',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              child: Text(
                userProfile.displayName,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              child: Text(
                'twitter',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              child: Text(
                userProfile.twitter,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              child: Text(
                'time zone',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              child: Text(
                userProfile.timeZone,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
