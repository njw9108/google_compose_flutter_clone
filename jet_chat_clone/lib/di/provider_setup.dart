import 'package:jet_chat_clone/data/data_source/message_data_source.dart';
import 'package:jet_chat_clone/data/repository/message_repository_impl.dart';
import 'package:jet_chat_clone/domain/use_case/load_chat_room_use_case.dart';
import 'package:jet_chat_clone/domain/use_case/load_history_message_use_case.dart';
import 'package:jet_chat_clone/domain/use_case/load_user_profiles_use_case.dart';
import 'package:jet_chat_clone/domain/use_case/message_use_case.dart';
import 'package:jet_chat_clone/domain/use_case/receive_message_use_case.dart';
import 'package:jet_chat_clone/domain/use_case/send_message_use_case.dart';
import 'package:jet_chat_clone/presentation/chat/chat_view_model.dart';
import 'package:jet_chat_clone/presentation/chat_room_list/chat_room_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

Future<List<SingleChildWidget>> getProviders() async {
  final dataSource = MessageDataSource();
  final repository = MessageRepositoryImpl(dataSource);
  final useCase = MessageUseCase(
      loadChatRoom: LoadChatRoomUseCase(repository),
      loadHistory: LoadHistoryMessageUseCase(repository),
      loadUserProfiles: LoadUserProfilesUseCase(repository),
      receiveMessage: ReceiveMessageUseCase(repository),
      sendMessage: SendMessageUseCase(repository));
  return [
    ChangeNotifierProvider<ChatViewModel>(
      create: (context) => ChatViewModel(useCase),
    ),
    ChangeNotifierProvider<ChatRoomViewModel>(
      create: (context) => ChatRoomViewModel(useCase),
    ),
  ];
}
