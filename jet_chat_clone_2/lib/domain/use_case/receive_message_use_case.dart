import 'package:jet_chat_clone_2/domain/model/message.dart';
import 'package:jet_chat_clone_2/domain/repository/message_repository.dart';

class ReceiveMessageUseCase {
  MessageRepository repository;

  ReceiveMessageUseCase(this.repository);

  Future<Message> call() async {
    return await repository.receiveMessage();
  }
}
