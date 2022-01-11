import 'package:jet_chat_clone_2/core/result.dart';
import 'package:jet_chat_clone_2/domain/model/message.dart';
import 'package:jet_chat_clone_2/domain/repository/message_repository.dart';

class LoadHistoryUseCase {
  MessageRepository repository;

  LoadHistoryUseCase(this.repository);

  Future<Result<List<Message>>> call() async {
    return await repository.loadHistoryMessage();
  }
}
