import 'package:flutter/material.dart';
import 'package:jet_chat_clone_2/presentation/chat/chat_view_model.dart';

class IconButtonData {
  final Icon icon;
  final void Function(ChatViewModel) onTap;

  IconButtonData({
    required this.icon,
    required this.onTap,
  });
}

final iconList = [
  IconButtonData(
      icon: const Icon(Icons.emoji_emotions_outlined),
      onTap: (viewModel) {
        if (viewModel.state.isEmojiSelected) {
          viewModel.emojiSelectChange(false);
        } else {
          viewModel.emojiSelectChange(true);
        }
      }),
  IconButtonData(
      icon: const Icon(Icons.alternate_email_outlined), onTap: (viewModel) {}),
  IconButtonData(icon: const Icon(Icons.image_outlined), onTap: (viewModel) {}),
  IconButtonData(
      icon: const Icon(Icons.add_location_outlined), onTap: (viewModel) {}),
  IconButtonData(
      icon: const Icon(Icons.video_call_rounded), onTap: (viewModel) {}),
];
