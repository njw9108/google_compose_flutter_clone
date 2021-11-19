import 'load_history_use_case.dart';
import 'receive_message_use_case.dart';
import 'send_message_use_case.dart';

class MessageUseCase {
  final LoadHistoryUseCase loadHistory;
  final ReceiveMessageUseCase receiveMessage;
  final SendMessageUseCase sendMessage;

  MessageUseCase({
    required this.loadHistory,
    required this.receiveMessage,
    required this.sendMessage,
  });
}
