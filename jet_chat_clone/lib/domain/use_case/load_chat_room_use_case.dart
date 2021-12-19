import 'package:jet_chat_clone/core/result.dart';
import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/model/chat_room.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class LoadChatRoomUseCase extends UseCase<Result<List<ChatRoom>>, NoParams> {
  MessageRepository repository;

  LoadChatRoomUseCase(this.repository);

  @override
  Future<Result<List<ChatRoom>>> call(NoParams params) async {
    return await repository.loadChatRooms();
  }
}
