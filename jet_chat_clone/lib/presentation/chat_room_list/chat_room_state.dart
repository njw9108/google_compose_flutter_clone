import 'package:jet_chat_clone/domain/model/chat_room.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_room_state.freezed.dart';
part 'chat_room_state.g.dart';
@freezed
class ChatRoomState with _$ChatRoomState {
  factory ChatRoomState({
    @Default([]) List<ChatRoom> chatRooms,
  }) = _ChatRoomState;

  factory ChatRoomState.fromJson(Map<String, dynamic> json) => _$ChatRoomStateFromJson(json);
}