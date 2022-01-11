import 'dart:io';

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:jet_chat_clone_2/ui/color.dart' as color;

class EmojiKeyboard extends StatefulWidget {
  final TextEditingController textEditingController;

  const EmojiKeyboard({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  State<EmojiKeyboard> createState() => _EmojiKeyboardState();
}

class _EmojiKeyboardState extends State<EmojiKeyboard> {
  bool emojiShowing = false;

  _onEmojiSelected(Emoji emoji) {
    widget.textEditingController
      ..text += emoji.emoji
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: widget.textEditingController.text.length));
  }

  _onBackspacePressed() {
    widget.textEditingController
      ..text =
          widget.textEditingController.text.characters.skipLast(1).toString()
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: widget.textEditingController.text.length));
  }

  @override
  Widget build(BuildContext context) {
    return EmojiPicker(
        onEmojiSelected: (Category category, Emoji emoji) {
          _onEmojiSelected(emoji);
        },
        onBackspacePressed: _onBackspacePressed,
        config: Config(
            columns: 7,
            // Issue: https://github.com/flutter/flutter/issues/28894
            emojiSizeMax: 32 * (Platform.isIOS ? 1.30 : 1.0),
            verticalSpacing: 0,
            horizontalSpacing: 0,
            initCategory: Category.RECENT,
            bgColor: color.brightBlue,
            indicatorColor: Colors.blue,
            iconColor: Colors.grey,
            iconColorSelected: Colors.blue,
            progressIndicatorColor: Colors.blue,
            backspaceColor: Colors.blue,
            showRecentsTab: true,
            recentsLimit: 28,
            noRecentsText: 'No Recents',
            noRecentsStyle:
                const TextStyle(fontSize: 20, color: Colors.black26),
            tabIndicatorAnimDuration: kTabScrollDuration,
            categoryIcons: const CategoryIcons(),
            buttonMode: ButtonMode.MATERIAL));
  }
}
