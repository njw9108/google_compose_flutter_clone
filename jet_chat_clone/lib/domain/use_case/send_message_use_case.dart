import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class SendMessageUseCase extends UseCase<void, Message> {
  MessageRepository repository;

  SendMessageUseCase(this.repository);

  @override
  Future<void> call(Message params) async {
    return await repository.sendMessage(params);
  }
}
