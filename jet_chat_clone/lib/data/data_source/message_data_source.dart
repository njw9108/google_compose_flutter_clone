import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';

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

    messages.add(message);
  }

  Future<Message> receiveMessage() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return Message(author: '', content: '', timestamp: '');
  }
}

List<UserProfile> profiles = [
  UserProfile(userId: '123', name: 'Ali Conors', displayName: 'ali', userImageUrl: 'imgs/ali.png', position: 'Senior Android Dev at Yearin\nGoogle Developer Expert', timeZone: 'In your timezone', twitter: 'twitter.com/aliconors'),
  UserProfile(userId: '456', name: 'Taylor Brooks', displayName: 'taylor', userImageUrl: 'imgs/someone_else.png', position: 'Senior Android Dev at Openlane', timeZone: 'twitter.com/taylorbrookscodes', twitter: '12:25 AM local time (Eastern Daylight Time)'),
];

List<Message> messages = [
  Message(
      author: 'me',
      content:
          'Compose newbie: I’ve scourged the internet for tutorials about async data loading but haven’t found any good ones. What’s the recommended way to load async data and emit composable widgets?',
      timestamp: '8:03 PM'),
  Message(
      author: 'John Glenn',
      content: 'Compose newbie as well, have you looked at the JetNews sample? Most blog posts end up out of date pretty fast but this sample is always up to date and deals with async data loading (its faked but the same idea applies) \uD83D\uDC49 https://github.com/android/compose-samples/tree/master/JetNews',
      timestamp: '8:04 PM'),
  Message(
      author: 'Taylor Brooks',
      content: '@aliconors Take a look at the `Flow.collectAsState()` APIs',
      timestamp: '8:05 PM'),
  Message(
      author: 'Taylor Brooks',
      content: 'You can use all the same stuff',
      timestamp: '8:05 PM'),
  Message(
    author: 'me',
    content: 'Thank you!',
    timestamp: '8:06 PM',
    //R.drawable.sticker
  ),
  Message(author: 'me', content: 'Check it out!', timestamp: '8:07 PM'),
];
