import 'package:freezed_annotation/freezed_annotation.dart';

part 'publication.freezed.dart';

part 'publication.g.dart';

@freezed
class Publication with _$Publication {
  factory Publication({
    required String name,
    required String logoUrl,
  }) = _Publication;

  factory Publication.fromJson(Map<String, dynamic> json) =>
      _$PublicationFromJson(json);
}