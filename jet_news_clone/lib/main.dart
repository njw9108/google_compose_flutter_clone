import 'package:flutter/material.dart';
import 'package:jet_news_clone/presentation/posts/posts_screen.dart';
import 'package:provider/provider.dart';

import 'di/provider_setup.dart';

void main() async {
  // 플랫폼 채널의 위젯 바인딩을 보장
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: await getProviders(),
    child: const MyApp(),
  ));
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
      home: const PostsScreen(),
    );
  }
}
