import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_state.freezed.dart';
part 'chat_state.g.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState({
    @Default('') String chatRoomTitle,
    @Default([]) List<Message>? historyMessages,
    @Default([]) List<UserProfile>? users,
    @Default(0) int? numOfMembers,
    @Default(false) bool showButton,
    @Default(false) bool isKeyboardSelected,
    @Default(false) bool isEmojiSelected,
  }) = _ChatState;

  factory ChatState.fromJson(Map<String, dynamic> json) =>
      _$ChatStateFromJson(json);
}
