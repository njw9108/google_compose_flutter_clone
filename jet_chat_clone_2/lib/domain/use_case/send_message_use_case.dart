import 'package:jet_chat_clone_2/domain/model/message.dart';
import 'package:jet_chat_clone_2/domain/repository/message_repository.dart';

class SendMessageUseCase {
  MessageRepository repository;

  SendMessageUseCase(this.repository);

  Future<void> call(Message params) async {
    return await repository.sendMessage(params);
  }
}
