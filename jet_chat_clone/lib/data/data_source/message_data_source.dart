import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jet_chat_clone/domain/model/chat_room.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/model/send_chat_data.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';

class MessageDataSource {
  final _chatRooms = FirebaseFirestore.instance
      .collection('chat_rooms')
      .withConverter<ChatRoom>(
        fromFirestore: (snapshot, _) => ChatRoom.fromJson(snapshot.data()!),
        toFirestore: (chatRoom, _) => chatRoom.toJson(),
      );

  Future<List<ChatRoom>> loadChatRooms() async {
    final QuerySnapshot<ChatRoom> querySnapshot = await _chatRooms.get();

    final chatRoomData = querySnapshot.docs.map((e) => e.data()).toList();

    List<ChatRoom> results = [];

    for (int i = 0; i < chatRoomData.length; i++) {
      final messageRef = _chatRooms
          .doc('OpenChat${i + 1}')
          .collection('messages')
          .withConverter<Message>(
            fromFirestore: (snapshot, _) => Message.fromJson(snapshot.data()!),
            toFirestore: (message, _) => message.toJson(),
          );

      final QuerySnapshot<Message> querySnapshotMessages =
          await messageRef.get();
      final List<Message> messages =
          querySnapshotMessages.docs.map((e) => e.data()).toList();

      final usersRef = _chatRooms
          .doc('OpenChat${i + 1}')
          .collection('users')
          .withConverter<UserProfile>(
            fromFirestore: (snapshot, _) =>
                UserProfile.fromJson(snapshot.data()!),
            toFirestore: (user, _) => user.toJson(),
          );

      final QuerySnapshot<UserProfile> querySnapshotUsers =
          await usersRef.get();
      final List<UserProfile> users =
          querySnapshotUsers.docs.map((e) => e.data()).toList();

      ChatRoom data;
      data = ChatRoom(
          chatRoomTitle: chatRoomData[i].chatRoomTitle,
          messages: messages,
          users: users,
          numberOfMember: users.length);

      results.add(data);
    }

    return results;
  }

  Future<List<Message>> loadHistoryMessage() async {
    // final QuerySnapshot<Message> querySnapshot = await _messages.get();
    // return querySnapshot.docs.map((e) => e.data()).toList();
    return [];
  }

  Future<List<UserProfile>> loadUserProfiles() async {
    await Future.delayed(const Duration(milliseconds: 200));

    return profiles;
  }

  // Future<void> sendMessage(SendChatData chatData) async {
  //   final message = _chatRooms.doc('OpenChat1').withConverter<Message>(
  //         fromFirestore: (snapshot, _) => Message.fromJson(snapshot.data()!),
  //         toFirestore: (message, _) => message.toJson(),
  //       );
  //
  //   _chatRooms.doc('OpenChat1');
  //
  // }

  Future<void> sendMessage(SendChatData chatData) async {
    final messageRef = _chatRooms
        .doc('OpenChat1')
        .collection('messages')
        .withConverter<Message>(
          fromFirestore: (snapshot, _) => Message.fromJson(snapshot.data()!),
          toFirestore: (message, _) => message.toJson(),
        );

    await messageRef.add(chatData.message);
  }

  Future<Message> receiveMessage() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return Message(author: '', content: '', timestamp: 0);
  }
}

List<UserProfile> profiles = [
  UserProfile(
      userId: '123',
      name: 'Ali Conors',
      displayName: 'ali',
      userImageUrl: 'imgs/ali.png',
      position: 'Senior Android Dev at Yearin\nGoogle Developer Expert',
      timeZone: 'In your timezone',
      twitter: 'twitter.com/aliconors'),
  UserProfile(
      userId: '456',
      name: 'Taylor Brooks',
      displayName: 'taylor',
      userImageUrl: 'imgs/someone_else.png',
      position: 'Senior Android Dev at Openlane',
      timeZone: 'twitter.com/taylorbrookscodes',
      twitter: '12:25 AM local time (Eastern Daylight Time)'),
];

// List<Message> messages = [
//   Message(
//       author: 'me',
//       content:
//           'Compose newbie: I???ve scourged the internet for tutorials about async data loading but haven???t found any good ones. What???s the recommended way to load async data and emit composable widgets?',
//       timestamp: '8:03 PM'),
//   Message(
//       author: 'John Glenn',
//       content: 'Compose newbie as well, have you looked at the JetNews sample? Most blog posts end up out of date pretty fast but this sample is always up to date and deals with async data loading (its faked but the same idea applies) \uD83D\uDC49 https://github.com/android/compose-samples/tree/master/JetNews',
//       timestamp: '8:04 PM'),
//   Message(
//       author: 'Taylor Brooks',
//       content: '@aliconors Take a look at the `Flow.collectAsState()` APIs',
//       timestamp: '8:05 PM'),
//   Message(
//       author: 'Taylor Brooks',
//       content: 'You can use all the same stuff',
//       timestamp: '8:05 PM'),
//   Message(
//     author: 'me',
//     content: 'Thank you!',
//     timestamp: '8:06 PM',
//     //R.drawable.sticker
//   ),
//   Message(author: 'me', content: 'Check it out!', timestamp: '8:07 PM'),
// ];
