import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jet_chat_clone_2/domain/model/message.dart';
import 'package:jet_chat_clone_2/domain/use_case/message_use_case.dart';
import 'package:jet_chat_clone_2/presentation/chat/chat_state.dart';
import 'package:jet_chat_clone_2/presentation/chat/chat_ui_event.dart';

class ChatViewModel with ChangeNotifier {
  final MessageUseCase _useCase;
  ChatState _state = ChatState();

  ChatState get state => _state;

  ChatViewModel(this._useCase) {
    loadData();
  }

  Future<void> loadData() async {
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

  void emojiSelectChange(bool selected) {
    _state = state.copyWith(
      isEmojiSelected: selected,
      isKeyboardSelected: false,
    );

    notifyListeners();
    _eventController.add(const ChatUiEvent.jumpToBottom());
  }

  void keyboardSelectChange(bool selected) {
    _state = state.copyWith(
      isKeyboardSelected: selected,
      isEmojiSelected: false,
    );

    notifyListeners();
    _eventController.add(const ChatUiEvent.jumpToBottom());
  }

  void _jumpToBottom() {
    _eventController.add(const ChatUiEvent.jumpToBottom());
  }

  Future<void> _loadMessages() async {
    final results = await _useCase.loadHistory();
    results.when(
        success: (results) {
          _state = state.copyWith(
            messages: results,
          );
        },
        error: (message) {});
  }

  Future<void> _loadUserProfiles() async {
    final results = await _useCase.loadUserProfiles();
    results.when(
        success: (results) {
          _state = state.copyWith(
            users: results,
          );
        },
        error: (message) {});
  }

  Future<void> _sendMessage(Message message) async {
    await _useCase.sendMessage(message);
    state.messages.add(message);
    notifyListeners();
    //await _loadMessages();
    _eventController.add(ChatUiEvent.sendMessage(message));
    _eventController.add(const ChatUiEvent.jumpToBottom());
  }
}
