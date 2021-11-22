import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        actions: [
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
      body: ListView(
        children: [
          Container(
            color: Colors.blueAccent,
            child: const Text('test'),
          ),
          Container(
            color: Colors.grey,
            child: const Text('test2'),
          ),
        ],
      ),
    );
  }
}
