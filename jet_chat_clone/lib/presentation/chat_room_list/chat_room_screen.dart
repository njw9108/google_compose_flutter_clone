import 'package:flutter/material.dart';
import 'package:jet_chat_clone/presentation/chat/chat_screen.dart';
import 'package:jet_chat_clone/presentation/chat_room_list/chat_room_view_model.dart';
import 'package:jet_chat_clone/ui/animal_picture.dart';
import 'package:jet_chat_clone/ui/color.dart' as color;
import 'package:provider/provider.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ChatRoomViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Jet Chat',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: (state.chatRooms.isNotEmpty)
              ? ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: color.selectedBlue,
                        ),
                        child: ListTile(
                          leading: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(animalPicture[index]),
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              state.chatRooms[index].chatRoomTitle,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatScreen(
                                  chatRoomTitle:
                                      state.chatRooms[index].chatRoomTitle,
                                  users: state.chatRooms[index].users,
                                  historyMessages:
                                      state.chatRooms[index].messages,
                                  numOfMembers:
                                      state.chatRooms[index].numberOfMember,
                                ),
                              ),
                            );
                          },
                          trailing: const Icon(Icons.arrow_right_alt_sharp),
                        ),
                      ),
                    );
                  },
                )
              : const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
