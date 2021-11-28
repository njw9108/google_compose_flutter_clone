import 'package:jet_chat_clone/domain/use_case/load_user_profiles_use_case.dart';

import 'load_history_use_case.dart';
import 'receive_message_use_case.dart';
import 'send_message_use_case.dart';

class MessageUseCase {
  final LoadHistoryUseCase loadHistory;
  final LoadUserProfilesUseCase loadUserProfiles;
  final ReceiveMessageUseCase receiveMessage;
  final SendMessageUseCase sendMessage;

  MessageUseCase({
    required this.loadHistory,
    required this.loadUserProfiles,
    required this.receiveMessage,
    required this.sendMessage,
  });
}
