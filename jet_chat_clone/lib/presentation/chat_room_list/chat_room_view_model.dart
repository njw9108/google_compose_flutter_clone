import 'package:flutter/material.dart';
import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/use_case/message_use_case.dart';
import 'package:jet_chat_clone/presentation/chat_room_list/chat_room_state.dart';

class ChatRoomViewModel with ChangeNotifier {
  final MessageUseCase _useCase;

  ChatRoomViewModel(this._useCase) {
    loadData();
  }

  ChatRoomState _state = ChatRoomState();

  ChatRoomState get state => _state;

  Future<void> loadData() async {
    await _loadChatRoomList();
    notifyListeners();
  }

  Future<void> _loadChatRoomList() async {
    final results = await _useCase.loadChatRoom(NoParams());
    results.when(
        success: (results) {
          _state = state.copyWith(
            chatRooms: results,
          );
        },
        error: (message) {});
  }
}
