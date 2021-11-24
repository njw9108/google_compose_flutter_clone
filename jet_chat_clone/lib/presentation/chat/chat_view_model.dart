import 'package:flutter/material.dart';
import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/use_case/message_use_case.dart';
import 'package:jet_chat_clone/presentation/chat/chat_state.dart';

class ChatViewModel with ChangeNotifier {
  final MessageUseCase _useCase;
  ChatState _state = ChatState();

  ChatState get state => _state;

  ChatViewModel(this._useCase) {
    _loadMessages();
  }

  Future<void> _loadMessages() async {
    final results = await _useCase.loadHistory(NoParams());
    results.when(success: (results) {
      _state = state.copyWith(
        messages: results,
      );
      notifyListeners();
    }, error: (message) {
      print(message);
    });
  }
}
