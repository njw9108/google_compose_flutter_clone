// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostsState _$$_PostsStateFromJson(Map<String, dynamic> json) =>
    _$_PostsState(
      feed: json['feed'] == null
          ? null
          : PostsFeed.fromJson(json['feed'] as Map<String, dynamic>),
      selectedDrawer:
          $enumDecodeNullable(_$DrawerTypeEnumMap, json['selectedDrawer']) ??
              DrawerType.home,
      favoritePostSet: (json['favoritePostSet'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
      searchResults: (json['searchResults'] as List<dynamic>?)
              ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
      isLoading: json['isLoading'] as bool? ?? true,
    );

Map<String, dynamic> _$$_PostsStateToJson(_$_PostsState instance) =>
    <String, dynamic>{
      'feed': instance.feed,
      'selectedDrawer': _$DrawerTypeEnumMap[instance.selectedDrawer],
      'favoritePostSet': instance.favoritePostSet.toList(),
      'searchResults': instance.searchResults.toList(),
      'isLoading': instance.isLoading,
    };

const _$DrawerTypeEnumMap = {
  DrawerType.home: 'home',
  DrawerType.interest: 'interest',
};
