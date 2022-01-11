// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InterestFeed _$$_InterestFeedFromJson(Map<String, dynamic> json) =>
    _$_InterestFeed(
      peopleTopic: (json['peopleTopic'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
      publicationsTopic: (json['publicationsTopic'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
      topicTopic: (json['topicTopic'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InterestFeedToJson(_$_InterestFeed instance) =>
    <String, dynamic>{
      'peopleTopic': instance.peopleTopic,
      'publicationsTopic': instance.publicationsTopic,
      'topicTopic': instance.topicTopic,
    };
