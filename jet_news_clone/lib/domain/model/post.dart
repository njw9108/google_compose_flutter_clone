import 'package:jet_news_clone/domain/model/metadata.dart';
import 'package:jet_news_clone/domain/model/paragraph.dart';
import 'package:jet_news_clone/domain/model/publication.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    required String id,
    required String title,
    String? subtitle,
    required String url,
    Publication? publication,
    required Metadata metadata,
    @Default([]) List<Paragraph> paragraphs,
    required int imageId,
    required int imageThumbId,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
