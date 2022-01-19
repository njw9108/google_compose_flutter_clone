import 'package:freezed_annotation/freezed_annotation.dart';

part 'snack.freezed.dart';

part 'snack.g.dart';

@freezed
class Snack with _$Snack {
  factory Snack({
    required int id,
    required String name,
    required String imageUrl,
    required int price,
    @Default('') String tagline,
    @Default({}) Set<String> tags,
  }) = _Snack;

  factory Snack.fromJson(Map<String, dynamic> json) => _$SnackFromJson(json);
}
