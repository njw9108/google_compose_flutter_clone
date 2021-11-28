import 'package:jet_chat_clone/core/result.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';

abstract class MessageRepository {
  Future<Result<List<Message>>> loadHistoryMessage();
  Future<Result<List<UserProfile>>> loadUserProfiles();
  Future<void> sendMessage(Message message);
  Future<Message> receiveMessage();
}
