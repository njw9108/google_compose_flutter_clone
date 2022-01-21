import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

part 'filter.g.dart';

@freezed
class Filter with _$Filter {
  factory Filter({
    required String name,
    @Default(false) bool enabled,
  }) = _Filter;

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);
}
