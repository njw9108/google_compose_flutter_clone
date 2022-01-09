import 'package:jet_chat_clone/core/result.dart';
import 'package:jet_chat_clone/data/data_source/message_data_source.dart';
import 'package:jet_chat_clone/domain/model/chat_room.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/domain/model/send_chat_data.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class MessageRepositoryImpl implements MessageRepository {
  MessageDataSource dataSource;

  MessageRepositoryImpl(this.dataSource);

  @override
  Future<Result<List<ChatRoom>>> loadChatRooms() async {
    List<ChatRoom> results = await dataSource.loadChatRooms();

    if (results.isNotEmpty) {
      return Result.success(results
        ..sort((ChatRoom room1, ChatRoom room2) =>
            room1.chatRoomTitle.compareTo(room2.chatRoomTitle)));
    } else {
      return const Result.error('이전 데이터가 없습니다.');
    }
  }

  @override
  Future<Result<List<Message>>> loadHistoryMessage() async {
    List<Message> results = await dataSource.loadHistoryMessage();

    if (results.isNotEmpty) {
      return Result.success(results
        ..sort(
            (Message m1, Message m2) => m1.timestamp.compareTo(m2.timestamp)));
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
  Future<void> sendMessage(SendChatData chatData) async {
    await dataSource.sendMessage(chatData);
  }
}
