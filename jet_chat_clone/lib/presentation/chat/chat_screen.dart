import 'package:flutter/material.dart';
import 'package:jet_chat_clone/presentation/chat/chat_view_model.dart';
import 'package:jet_chat_clone/presentation/chat/components/message_item.dart';
import 'package:jet_chat_clone/presentation/chat/components/text_field_item.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ChatViewModel>();
    final state = viewModel.state;

    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: const Color(0xffdbe0f6),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 150,
                child: DrawerHeader(
                  //margin: EdgeInsets.only(bottom: 8),
                  //padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(),
                  child: Text(
                    'Jet Chat',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Chats'),
              ),
              ListTile(
                title: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xffaab7f5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Composers',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.transparent,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'droidcon-nyc',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Recent Profiles'),
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://dimg.donga.com/wps/NEWS/IMAGE/2021/01/17/104953245.2.jpg'),
                          ),
                        ),
                      ),
                      Text(
                        'Ali Conors',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://dimg.donga.com/wps/NEWS/IMAGE/2021/01/17/104953245.2.jpg'),
                          ),
                        ),
                      ),
                      Text(
                        'Ali Conors',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.info_outlined),
          SizedBox(
            width: 10,
          ),
        ],
        title: Center(
          child: Column(
            children: const [
              Text(
                '#composer',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '42 members',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: ListView(
              children: state.messages
                  .map((message) => MessageItem(message: message))
                  .toList(),
            ),
          ),
          const Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: TextFieldItem(),
          ),
        ],
      ),
    );
  }
}
