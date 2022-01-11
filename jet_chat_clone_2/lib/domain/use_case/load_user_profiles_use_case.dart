import 'package:jet_chat_clone_2/core/result.dart';
import 'package:jet_chat_clone_2/domain/model/user_profile.dart';
import 'package:jet_chat_clone_2/domain/repository/message_repository.dart';

class LoadUserProfilesUseCase {
  MessageRepository repository;

  LoadUserProfilesUseCase(this.repository);

  Future<Result<List<UserProfile>>> call() async {
    return await repository.loadUserProfiles();
  }
}
