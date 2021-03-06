// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paragraph.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Paragraph _$$_ParagraphFromJson(Map<String, dynamic> json) => _$_Paragraph(
      type: $enumDecode(_$ParagraphTypeEnumMap, json['type']),
      text: json['text'] as String,
      markups: (json['markups'] as List<dynamic>?)
              ?.map((e) => Markup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ParagraphToJson(_$_Paragraph instance) =>
    <String, dynamic>{
      'type': _$ParagraphTypeEnumMap[instance.type],
      'text': instance.text,
      'markups': instance.markups,
    };

const _$ParagraphTypeEnumMap = {
  ParagraphType.Title: 'Title',
  ParagraphType.Caption: 'Caption',
  ParagraphType.Header: 'Header',
  ParagraphType.Subhead: 'Subhead',
  ParagraphType.Text: 'Text',
  ParagraphType.CodeBlock: 'CodeBlock',
  ParagraphType.Quote: 'Quote',
  ParagraphType.Bullet: 'Bullet',
};
