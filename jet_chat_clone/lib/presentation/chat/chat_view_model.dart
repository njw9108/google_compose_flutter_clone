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
    loadDatas();
  }

  Future<void> loadDatas() async {
    await _loadMessages();
    await _loadUserProfiles();
    notifyListeners();
    _eventController.add(const ChatUiEvent.jumpToBottom());
  }

  void onEvent(ChatUiEvent event) {
    event.when(
      loadHistory: _loadMessages,
      jumpToBottom: _jumpToBottom,
      showButton: _showButton,
      hideButton: _hideButton,
      sendMessage: _sendMessage,
    );
  }

  // 브로드캐스트 스트림
  final _eventController = StreamController<ChatUiEvent>.broadcast();

  Stream<ChatUiEvent> get eventStream => _eventController.stream;

  void _showButton() {
    _state = state.copyWith(
      showButton: true,
    );
    notifyListeners();
  }

  void _hideButton() {
    _state = state.copyWith(
      showButton: false,
    );
    notifyListeners();
  }

  void keyboardSelectChange(bool selected) {
    _state = state.copyWith(
      isKeyboardSelected: selected,
    );

    print('keyboard select change');
    notifyListeners();
    _eventController.add(const ChatUiEvent.jumpToBottom());
  }

  void _jumpToBottom() {
    _eventController.add(const ChatUiEvent.jumpToBottom());
  }



  Future<void> _loadMessages() async {
    final results = await _useCase.loadHistory(NoParams());
    results.when(
        success: (results) {
          _state = state.copyWith(
            messages: results,
          );
          print('load message');
        },
        error: (message) {});
  }

  Future<void> _loadUserProfiles() async {
    final results = await _useCase.loadUserProfiles(NoParams());
    results.when(
        success: (results) {
          _state = state.copyWith(
            users: results,
          );
          print('load user profile');
        },
        error: (message) {});
  }

  Future<void> _sendMessage(Message message) async {
    await _useCase.sendMessage(message);
    await _loadMessages();
    _eventController.add(ChatUiEvent.sendMessage(message));
    _eventController.add(const ChatUiEvent.jumpToBottom());
  }
}
