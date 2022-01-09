import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/ui/color.dart' as color;

class MessageItem extends StatelessWidget {
  final Message message;

  const MessageItem({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: (message.author == 'me')
                    ? const AssetImage('imgs/ali.png')
                    : const AssetImage('imgs/someone_else.png'),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        message.author,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        DateFormat('HH : mm').format(DateTime.fromMillisecondsSinceEpoch(message.timestamp)),
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: (message.author == 'me')
                        ? color.deepBlue
                        : color.brightGrey,
                  ),
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      message.content,
                      softWrap: true,
                      style: TextStyle(
                          color: (message.author == 'me')
                              ? Colors.white
                              : Colors.black87,
                          height: 1.5,
                          fontSize: 17),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
