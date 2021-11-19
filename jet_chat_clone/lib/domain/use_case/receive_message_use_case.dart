import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class ReceiveMessageUseCase extends UseCase<Message, NoParams> {
  MessageRepository repository;

  ReceiveMessageUseCase(this.repository);

  @override
  Future<Message> call(NoParams params) async {
    return await repository.receiveMessage();
  }
}
