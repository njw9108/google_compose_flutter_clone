import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_chat_clone_2/domain/model/message.dart';
import 'package:jet_chat_clone_2/domain/model/user_profile.dart';

part 'chat_state.freezed.dart';

part 'chat_state.g.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState({
    @Default([]) List<UserProfile> users,
    @Default([]) List<Message> messages,
    @Default(false) bool showButton,
    @Default(false) bool isKeyboardSelected,
    @Default(false) bool isEmojiSelected,
  }) = _ChatState;

  factory ChatState.fromJson(Map<String, dynamic> json) =>
      _$ChatStateFromJson(json);
}
