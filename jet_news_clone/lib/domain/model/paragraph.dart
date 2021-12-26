import 'package:jet_news_clone/domain/model/markup.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paragraph.freezed.dart';

part 'paragraph.g.dart';

@freezed
class Paragraph with _$Paragraph {
  factory Paragraph({
    required ParagraphType type,
    required String text,
    @Default([]) List<Markup> markups,
  }) = _Paragraph;

  factory Paragraph.fromJson(Map<String, dynamic> json) =>
      _$ParagraphFromJson(json);
}

enum ParagraphType {
  title,
  caption,
  header,
  subhead,
  text,
  codeBlock,
  quote,
  bullet,
}
