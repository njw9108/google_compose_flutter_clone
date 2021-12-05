import 'package:jet_chat_clone/core/result.dart';
import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class LoadHistoryMessageUseCase extends UseCase<Result<List<Message>>, NoParams> {
  MessageRepository repository;

  LoadHistoryMessageUseCase(this.repository);

  @override
  Future<Result<List<Message>>> call(NoParams params) async {
    return await repository.loadHistoryMessage();
  }
}
