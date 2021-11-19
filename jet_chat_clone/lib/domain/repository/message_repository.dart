import 'package:jet_chat_clone/domain/model/message.dart';

abstract class MessageRepository {
  Future<List<Message>> loadHistoryMessage(Message message);
  Future<void> sendMessage(Message message);
  Future<Message> receiveMessage();
}
