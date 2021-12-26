import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_author.freezed.dart';

part 'post_author.g.dart';

@freezed
class PostAuthor with _$PostAuthor {
  factory PostAuthor({
    required String name,
    String? url,
  }) = _PostAuthor;

  factory PostAuthor.fromJson(Map<String, dynamic> json) =>
      _$PostAuthorFromJson(json);
}
