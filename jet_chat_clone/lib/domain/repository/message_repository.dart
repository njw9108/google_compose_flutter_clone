import 'package:jet_chat_clone/core/result.dart';
import 'package:jet_chat_clone/domain/model/message.dart';

abstract class MessageRepository {
  Future<Result<List<Message>>> loadHistoryMessage();
  Future<void> sendMessage(Message message);
  Future<Message> receiveMessage();
}
