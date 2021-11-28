import 'package:flutter/material.dart';
import 'package:jet_chat_clone/presentation/chat/chat_view_model.dart';

class IconButtonData {
  final Icon icon;
  final void Function(ChatViewModel) onTap;

  IconButtonData({
    required this.icon,
    required this.onTap,
  });
}

final emojiList = [
  IconButtonData(
      icon: const Icon(Icons.emoji_emotions_outlined),
      onTap: (viewModel) {
        if (viewModel.state.isKeyboardSelected) {
          print('IconButtonData false');
          viewModel.keyboardSelectChange(false);
        } else {
          print('IconButtonData true');
          viewModel.keyboardSelectChange(true);
        }
      }),
  IconButtonData(
      icon: const Icon(Icons.alternate_email_outlined),
      onTap: (viewModel) {}),
  IconButtonData(
      icon: const Icon(Icons.image_outlined), onTap: (viewModel) {}),
  IconButtonData(
      icon: const Icon(Icons.add_location_outlined), onTap: (viewModel) {}),
  IconButtonData(
      icon: const Icon(Icons.video_call_rounded), onTap: (viewModel) {}),
];