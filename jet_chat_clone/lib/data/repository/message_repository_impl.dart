import 'package:jet_chat_clone/core/result.dart';
import 'package:jet_chat_clone/data/data_source/message_data_source.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class MessageRepositoryImpl implements MessageRepository {
  MessageDataSource dataSource;

  MessageRepositoryImpl(this.dataSource);

  @override
  Future<Result<List<Message>>> loadHistoryMessage() async {
    List<Message> results = await dataSource.loadHistoryMessage();

    if (results.isNotEmpty) {
      return Result.success(results);
    } else {
      return const Result.error('이전 데이터가 없습니다.');
    }
  }

  @override
  Future<Result<List<UserProfile>>> loadUserProfiles() async {
    List<UserProfile> results = await dataSource.loadUserProfiles();

    if (results.isNotEmpty) {
      return Result.success(results);
    } else {
      return const Result.error('이전 데이터가 없습니다.');
    }
  }

  @override
  Future<Message> receiveMessage() async {
    return await dataSource.receiveMessage();
  }

  @override
  Future<void> sendMessage(Message message) async {
    await dataSource.sendMessage(message);
  }
}
