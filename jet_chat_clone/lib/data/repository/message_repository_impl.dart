import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class MessageRepositoryImpl implements MessageRepository {
  @override
  Future<List<Message>> loadHistoryMessage(Message message) {
    // TODO: implement loadHistoryMessage
    throw UnimplementedError();
  }

  @override
  Future<Message> receiveMessage() {
    // TODO: implement receiveMessage
    throw UnimplementedError();
  }

  @override
  Future<void> sendMessage(Message message) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }

}