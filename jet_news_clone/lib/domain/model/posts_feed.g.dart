// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostsFeed _$$_PostsFeedFromJson(Map<String, dynamic> json) => _$_PostsFeed(
      highlightedPost:
          Post.fromJson(json['highlightedPost'] as Map<String, dynamic>),
      recommendedPosts: (json['recommendedPosts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularPosts: (json['popularPosts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentPosts: (json['recentPosts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostsFeedToJson(_$_PostsFeed instance) =>
    <String, dynamic>{
      'highlightedPost': instance.highlightedPost,
      'recommendedPosts': instance.recommendedPosts,
      'popularPosts': instance.popularPosts,
      'recentPosts': instance.recentPosts,
    };
