// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      url: json['url'] as String,
      publication: json['publication'] == null
          ? null
          : Publication.fromJson(json['publication'] as Map<String, dynamic>),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      paragraphs: (json['paragraphs'] as List<dynamic>?)
              ?.map((e) => Paragraph.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      imageId: json['imageId'] as int,
      imageThumbId: json['imageThumbId'] as int,
      dbID: json['dbID'] as int?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'url': instance.url,
      'publication': instance.publication,
      'metadata': instance.metadata,
      'paragraphs': instance.paragraphs,
      'imageId': instance.imageId,
      'imageThumbId': instance.imageThumbId,
      'dbID': instance.dbID,
    };
