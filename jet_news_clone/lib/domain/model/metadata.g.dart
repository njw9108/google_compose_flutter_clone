// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Metadata _$$_MetadataFromJson(Map<String, dynamic> json) => _$_Metadata(
      author: PostAuthor.fromJson(json['author'] as Map<String, dynamic>),
      date: json['date'] as String,
      readTimeMinutes: json['readTimeMinutes'] as int,
    );

Map<String, dynamic> _$$_MetadataToJson(_$_Metadata instance) =>
    <String, dynamic>{
      'author': instance.author,
      'date': instance.date,
      'readTimeMinutes': instance.readTimeMinutes,
    };
