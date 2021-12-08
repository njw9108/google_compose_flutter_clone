import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_chat_clone/domain/model/message.dart';

part 'chat_ui_event.freezed.dart';

@freezed
abstract class ChatUiEvent with _$ChatUiEvent {
  const factory ChatUiEvent.loadHistory() = LoadHistory;

  const factory ChatUiEvent.jumpToBottom() = JumpToBottom;

  const factory ChatUiEvent.showButton() = ShowButton;

  const factory ChatUiEvent.hideButton() = HideButton;

  const factory ChatUiEvent.sendMessage(Message message, String title) = SendMessage;
}
