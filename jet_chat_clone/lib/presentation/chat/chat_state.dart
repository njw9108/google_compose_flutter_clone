import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

part 'chat_state.g.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState({
    @Default([]) List<Message> messages,
    @Default(false) bool isScrolled,
  }) = _ChatState;

  factory ChatState.fromJson(Map<String, dynamic> json) =>
      _$ChatStateFromJson(json);
}
