import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jet_chat_clone_2/domain/model/message.dart';
import 'package:jet_chat_clone_2/domain/model/user_profile.dart';

class MessageDataSource {
  final _messages =
      FirebaseFirestore.instance.collection('message').withConverter<Message>(
            fromFirestore: (snapshot, _) => Message.fromJson(snapshot.data()!),
            toFirestore: (message, _) => message.toJson(),
          );

  Future<List<Message>> loadHistoryMessage() async {
    final QuerySnapshot<Message> querySnapshot = await _messages.get();
    return querySnapshot.docs.map((e) => e.data()).toList();
  }

  Future<List<UserProfile>> loadUserProfiles() async {
    await Future.delayed(const Duration(milliseconds: 200));

    return profiles;
  }

  Future<void> sendMessage(Message message) async {
    await _messages.add(message);
    //messages.add(message);
  }

  Future<Message> receiveMessage() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return Message(author: '', content: '', timestamp: 0);
  }
}

List<UserProfile> profiles = [
  UserProfile(
      userId: 'Ali@gamil.com',
      name: 'Ali Conors',
      displayName: 'ali',
      userImageUrl: 'imgs/ali.png',
      position: 'Senior Android Dev at Yearin\nGoogle Developer Expert',
      twitter: 'In your timezone',
      timeZone: 'twitter.com/aliconors'),
  UserProfile(
      userId: 'Taylor@gamil.com',
      name: 'Taylor Brooks',
      displayName: 'taylor',
      userImageUrl: 'imgs/someone_else.png',
      position: 'Senior Android Dev at Openlane',
      twitter: 'twitter.com/taylorbrookscodes',
      timeZone: '12:25 AM local time (Eastern Daylight Time)'),
];
