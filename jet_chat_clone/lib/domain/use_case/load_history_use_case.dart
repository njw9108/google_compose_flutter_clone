import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class LoadHistoryUseCase extends UseCase<List<Message>, Message> {
  MessageRepository repository;

  LoadHistoryUseCase(this.repository);

  @override
  Future<List<Message>> call(Message params) async {
    return await repository.loadHistoryMessage(params);
  }
}
