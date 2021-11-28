import 'package:flutter/material.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';

class DrawerProfileList extends StatelessWidget {
  final UserProfile userProfile;
  final void Function(UserProfile user)? onTap;

  const DrawerProfileList({
    Key? key,
    required this.userProfile,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call(userProfile);
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 40,
              height: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage(userProfile.userImageUrl),
              ),
            ),
          ),
          Text(
            userProfile.displayName,
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
