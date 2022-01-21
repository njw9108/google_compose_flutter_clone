import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_category.freezed.dart';

part 'search_category.g.dart';

@freezed
class SearchCategory with _$SearchCategory {
  factory SearchCategory({
    required String name,
    required String imageUrl,
  }) = _SearchCategory;

  factory SearchCategory.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryFromJson(json);
}
