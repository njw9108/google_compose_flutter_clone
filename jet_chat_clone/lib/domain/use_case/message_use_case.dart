import 'package:jet_chat_clone/domain/use_case/load_chat_room_use_case.dart';
import 'package:jet_chat_clone/domain/use_case/load_user_profiles_use_case.dart';

import 'load_history_message_use_case.dart';
import 'receive_message_use_case.dart';
import 'send_message_use_case.dart';

class MessageUseCase {
  final LoadChatRoomUseCase loadChatRoom;
  final LoadHistoryMessageUseCase loadHistory;
  final LoadUserProfilesUseCase loadUserProfiles;
  final ReceiveMessageUseCase receiveMessage;
  final SendMessageUseCase sendMessage;

  MessageUseCase({
    required this.loadChatRoom,
    required this.loadHistory,
    required this.loadUserProfiles,
    required this.receiveMessage,
    required this.sendMessage,
  });
}
