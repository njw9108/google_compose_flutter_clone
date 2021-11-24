import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_ui_event.freezed.dart';

@freezed
abstract class ChatUiEvent with _$ChatUiEvent {
  const factory ChatUiEvent.loadHistory() = LoadHistory;
  const factory ChatUiEvent.jumpToBottom() = JumpToBottom;
  const factory ChatUiEvent.scrollMoved() = ScrollMoved;
  const factory ChatUiEvent.jumpToBottomEnd() = JumpToBottomEnd;
}
