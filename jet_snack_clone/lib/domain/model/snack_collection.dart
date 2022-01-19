import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jet_snack_clone/domain/model/snack.dart';

part 'snack_collection.freezed.dart';

part 'snack_collection.g.dart';

@freezed
class SnackCollection with _$SnackCollection {
  factory SnackCollection({
    required int id,
    required String name,
    @Default([]) List<Snack> snacks,
    @Default(CollectionType.Normal) CollectionType type,
  }) = _SnackCollection;

  factory SnackCollection.fromJson(Map<String, dynamic> json) =>
      _$SnackCollectionFromJson(json);
}

enum CollectionType { Normal, Highlight }
