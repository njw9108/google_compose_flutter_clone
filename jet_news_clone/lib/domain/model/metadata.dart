import 'package:jet_news_clone/domain/model/post_author.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata.freezed.dart';

part 'metadata.g.dart';

@freezed
class Metadata with _$Metadata {
  factory Metadata({
    required PostAuthor author,
    required String date,
    required int readTimeMinutes,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
