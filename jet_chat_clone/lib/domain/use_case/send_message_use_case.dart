import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/model/send_chat_data.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class SendMessageUseCase extends UseCase<void, SendChatData> {
  MessageRepository repository;

  SendMessageUseCase(this.repository);

  @override
  Future<void> call(SendChatData params) async {
    return await repository.sendMessage(params);
  }
}
