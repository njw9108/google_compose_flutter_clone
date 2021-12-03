import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/presentation/chat/chat_state.dart';
import 'package:jet_chat_clone/presentation/chat/chat_ui_event.dart';
import 'package:jet_chat_clone/presentation/chat/chat_view_model.dart';
import 'package:jet_chat_clone/presentation/chat/components/drawer_profile_list.dart';
import 'package:jet_chat_clone/presentation/chat/components/message_item.dart';
import 'package:jet_chat_clone/presentation/chat/components/text_field_item.dart';
import 'package:jet_chat_clone/presentation/edit_profile/edit_profile_screen.dart';
import 'package:jet_chat_clone/ui/color.dart' as color;
import 'package:provider/provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _scrollController = ScrollController();
  final TextEditingController textEditingController = TextEditingController();

  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<ChatViewModel>();

      // 구독
      _streamSubscription = viewModel.eventStream.listen((event) {
        event.when(
          loadHistory: () {},
          jumpToBottom: () {
            WidgetsBinding.instance!.addPostFrameCallback(
              (_) {
                _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
              },
            );
          },
          showButton: () {},
          hideButton: () {},
          sendMessage: (Message message) {
            textEditingController.clear();
            FocusScope.of(context).unfocus();
          },
        );
      });
    });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    _scrollController.dispose();
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ChatViewModel>();
    final state = viewModel.state;

    return WillPopScope(
      onWillPop: () {
        if (state.isKeyboardSelected == true) {
          viewModel.keyboardSelectChange(false);
          return Future(() => false);
        }
        return Future(() => true);
      },
      child: Scaffold(
        drawer: _buildDrawer(state),
        appBar: _buildAppBar(),
        body: _buildBody(state, viewModel),
      ),
    );
  }

  Column _buildBody(ChatState state, ChatViewModel viewModel) {
    return Column(
      children: [
        Flexible(
          flex: (state.isKeyboardSelected == false) ? 4 : 2,
          fit: FlexFit.tight,
          child: Stack(
            children: [
              NotificationListener(
                child: _buildListView(state),
                onNotification: (event) {
                  if (event is UserScrollNotification) {
                    if (_scrollController.offset !=
                            _scrollController.position.maxScrollExtent &&
                        state.showButton == false) {
                      viewModel.onEvent(const ChatUiEvent.showButton());
                    }
                  }
                  if (event is ScrollEndNotification) {
                    if (_scrollController.offset ==
                            _scrollController.position.maxScrollExtent &&
                        state.showButton == true) {
                      viewModel.onEvent(const ChatUiEvent.hideButton());
                    }
                  }
                  return false;
                },
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Visibility(
                    visible: state.showButton == true ? true : false,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: color.brightBlue,
                        onPrimary: const Color.fromRGBO(0, 0, 255, 70),
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () {
                        viewModel.onEvent(const ChatUiEvent.jumpToBottom());
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('⬇ Jump to bottom'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: TextFieldItem(
            textEditingController: textEditingController,
          ),
        ),
      ],
    );
  }

  Widget _buildListView(ChatState state) {
    return ListView(
      controller: _scrollController,
      children: state.messages
          .map((message) => MessageItem(message: message))
          .toList(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
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
    );
  }

  Widget _buildDrawer(ChatState state) {
    return Drawer(
      child: Container(
        color: color.brightBlue,
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
                  color: color.selectedBlue,
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
              children: state.users.map((userProfile) {
                return DrawerProfileList(
                  userProfile: userProfile,
                  onTap: (userProfile) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfileScreen(
                          userProfile: userProfile,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
