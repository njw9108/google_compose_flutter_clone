// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InterestState _$$_InterestStateFromJson(Map<String, dynamic> json) =>
    _$_InterestState(
      feed: json['feed'] == null
          ? null
          : InterestFeed.fromJson(json['feed'] as Map<String, dynamic>),
      favoriteTopicSet: (json['favoriteTopicSet'] as List<dynamic>?)
              ?.map((e) => Topic.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$_InterestStateToJson(_$_InterestState instance) =>
    <String, dynamic>{
      'feed': instance.feed,
      'favoriteTopicSet': instance.favoriteTopicSet.toList(),
    };
