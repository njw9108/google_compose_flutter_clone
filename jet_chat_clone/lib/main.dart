import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jet_chat_clone/di/provider_setup.dart';
import 'package:jet_chat_clone/presentation/chat/chat_screen.dart';
import 'package:jet_chat_clone/presentation/chat_room_list/chat_room_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: await getProviders(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatRoomScreen(),
    );
  }
}
