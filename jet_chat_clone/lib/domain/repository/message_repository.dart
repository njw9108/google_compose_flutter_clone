import 'package:jet_chat_clone/core/result.dart';
import 'package:jet_chat_clone/domain/model/chat_room.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/model/send_chat_data.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';

abstract class MessageRepository {
  Future<Result<List<ChatRoom>>> loadChatRooms();
  Future<Result<List<Message>>> loadHistoryMessage();
  Future<Result<List<UserProfile>>> loadUserProfiles();
  Future<void> sendMessage(SendChatData chatData);
  Future<Message> receiveMessage();
}
