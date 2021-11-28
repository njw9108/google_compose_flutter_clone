import 'package:jet_chat_clone/core/result.dart';
import 'package:jet_chat_clone/core/use_case.dart';
import 'package:jet_chat_clone/domain/model/user_profile.dart';
import 'package:jet_chat_clone/domain/repository/message_repository.dart';

class LoadUserProfilesUseCase
    extends UseCase<Result<List<UserProfile>>, NoParams> {
  MessageRepository repository;

  LoadUserProfilesUseCase(this.repository);

  @override
  Future<Result<List<UserProfile>>> call(NoParams params) async {
    return await repository.loadUserProfiles();
  }
}
