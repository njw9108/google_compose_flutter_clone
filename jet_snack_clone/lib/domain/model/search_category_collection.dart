import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_snack_clone/domain/model/search_category.dart';

part 'search_category_collection.freezed.dart';

part 'search_category_collection.g.dart';

@freezed
class SearchCategoryCollection with _$SearchCategoryCollection {
  factory SearchCategoryCollection({
    required int id,
    required String name,
    required List<SearchCategory> categories,
  }) = _SearchCategoryCollection;

  factory SearchCategoryCollection.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryCollectionFromJson(json);
}
