// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Markup _$$_MarkupFromJson(Map<String, dynamic> json) => _$_Markup(
      type: $enumDecode(_$MarkupTypeEnumMap, json['type']),
      start: json['start'] as int,
      end: json['end'] as int,
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$_MarkupToJson(_$_Markup instance) => <String, dynamic>{
      'type': _$MarkupTypeEnumMap[instance.type],
      'start': instance.start,
      'end': instance.end,
      'href': instance.href,
    };

const _$MarkupTypeEnumMap = {
  MarkupType.Link: 'Link',
  MarkupType.Code: 'Code',
  MarkupType.Italic: 'Italic',
  MarkupType.Bold: 'Bold',
};
