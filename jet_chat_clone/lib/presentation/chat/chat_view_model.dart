import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/use_case/message_use_case.dart';
import 'package:jet_chat_clone/presentation/chat/chat_state.dart';
import 'package:jet_chat_clone/presentation/chat/chat_ui_event.dart';

class ChatViewModel with ChangeNotifier {
  final MessageUseCase _useCase;
  ChatState _state = ChatState();

  ChatState get state => _state;

  ChatViewModel(this._useCase) {
    _loadMessages();
  }



  void onEvent(ChatUiEvent event) {
    event.when(
      loadHistory: _loadMessages,
      jumpToBottom: _jumpToBottom,
      scrollMoved: _scrollMoved,
      jumpToBottomEnd: _jumpToBottomEnd,
      sendMessage: _sendMessage,
    );
  }

  // 브로드캐스트 스트림
  final _eventController = StreamController<ChatUiEvent>.broadcast();

  Stream<ChatUiEvent> get eventStream => _eventController.stream;

  void _scrollMoved() {
    _state = state.copyWith(
      isScrolled: true,
    );
    notifyListeners();
  }

  void keyboardSelectChange(bool select) {
    print('keyboardSelectChange');
    _state = state.copyWith(
      isKeyboardSelected: select,
    );
    notifyListeners();
  }

  void _jumpToBottom() {
    _eventController.add(const ChatUiEvent.jumpToBottom());
  }

  void _jumpToBottomEnd() {
    _state = state.copyWith(
      isScrolled: false,
    );
    notifyListeners();
  }

  Future<void> _loadMessages() async {
    final results = await _useCase.loadHistory(NoParams());
    results.when(
        success: (results) {
          _state = state.copyWith(
            messages: results,
          );
          notifyListeners();
          _jumpToBottom();
        },
        error: (message) {});
  }

  Future<void> _sendMessage(Message message) async {
    await _useCase.sendMessage(message);
    _loadMessages();
    _eventController.add(ChatUiEvent.sendMessage(message));
  }
}
