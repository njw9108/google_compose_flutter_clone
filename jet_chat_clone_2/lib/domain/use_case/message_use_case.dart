import 'package:jet_chat_clone_2/domain/use_case/load_history_use_case.dart';
import 'package:jet_chat_clone_2/domain/use_case/load_user_profiles_use_case.dart';
import 'package:jet_chat_clone_2/domain/use_case/receive_message_use_case.dart';
import 'package:jet_chat_clone_2/domain/use_case/send_message_use_case.dart';

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
