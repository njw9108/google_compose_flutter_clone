import 'package:freezed_annotation/freezed_annotation.dart';

part 'markup.freezed.dart';

part 'markup.g.dart';

@freezed
class Markup with _$Markup {
  factory Markup({
    required MarkupType type,
    required int start,
    required int end,
    String? href,
  }) = _Markup;

  factory Markup.fromJson(Map<String, dynamic> json) => _$MarkupFromJson(json);
}

enum MarkupType {
  link,
  code,
  italic,
  bold,
}
