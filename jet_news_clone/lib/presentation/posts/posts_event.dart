import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_news_clone/domain/model/post.dart';
part 'posts_event.freezed.dart';
@freezed
abstract class PostsEvent with _$PostsEvent {
  const factory PostsEvent.toggleFavoritePost(Post post) = ToggleFavoritePost;
}