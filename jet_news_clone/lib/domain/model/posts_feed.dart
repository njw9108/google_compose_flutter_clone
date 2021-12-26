import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_news_clone/domain/model/post.dart';

part 'posts_feed.freezed.dart';

part 'posts_feed.g.dart';

@freezed
class PostsFeed with _$PostsFeed {
  factory PostsFeed({
    required Post highlightedPost,
    required List<Post> recommendedPosts,
    required List<Post> popularPosts,
    required List<Post> recentPosts,
  }) = _PostsFeed;

  factory PostsFeed.fromJson(Map<String, dynamic> json) =>
      _$PostsFeedFromJson(json);
}
