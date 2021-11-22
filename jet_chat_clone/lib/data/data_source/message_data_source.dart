import 'package:jet_chat_clone/domain/model/message.dart';

class MessageDataSource {
  Future<List<Message>> loadHistoryMessage() async {
    await Future.delayed(const Duration(milliseconds: 200));

    return messages;
  }

  Future<void> sendMessage(Message message) async {
    await Future.delayed(const Duration(milliseconds: 100));

    messages.add(message);
  }

  Future<Message> receiveMessage() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return Message(author: '', content: '', timestamp: '');
  }
}

List<Message> messages = [
  Message(author: 'me', content: 'Check it out!', timestamp: '8:07 PM'),
  Message(
    author: 'me',
    content: 'Thank you!',
    timestamp: '8:06 PM',
    //R.drawable.sticker
  ),
  Message(
      author: 'Taylor Brooks',
      content: 'You can use all the same stuff',
      timestamp: '8:05 PM'),
  Message(
      author: 'Taylor Brooks',
      content: '@aliconors Take a look at the `Flow.collectAsState()` APIs',
      timestamp: '8:05 PM'),
  Message(
      author: 'John Glenn',
      content: 'Compose newbie as well, have you looked at the JetNews sample? Most blog posts end up ' +
          'out of date pretty fast but this sample is always up to date and deals with async ' +
          'data loading (its faked but the same idea applies) \uD83D\uDC49' +
          'https://github.com/android/compose-samples/tree/master/JetNews',
      timestamp: '8:04 PM'),
  Message(
      author: 'me',
      content:
      'Compose newbie: I’ve scourged the internet for tutorials about async data loading ' +
          'but haven’t found any good ones. What’s the recommended way to load async ' +
          'data and emit composable widgets?',
      timestamp: '8:03 PM'),
];
