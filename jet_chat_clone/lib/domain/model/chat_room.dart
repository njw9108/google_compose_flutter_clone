import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_room.freezed.dart';
part 'chat_room.g.dart';
@freezed
class ChatRoom with _$ChatRoom {
  factory ChatRoom({
    required String chatRoomTitle,
    List<UserProfile>? users,
    List<Message>? messages,
    int? numberOfMember,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) => _$ChatRoomFromJson(json);
}