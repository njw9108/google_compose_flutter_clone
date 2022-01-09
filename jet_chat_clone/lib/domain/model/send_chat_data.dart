import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_chat_data.freezed.dart';

part 'send_chat_data.g.dart';

@freezed
class SendChatData with _$SendChatData {
  factory SendChatData({
    required String title,
    required Message message,
  }) = _SendChatData;

  factory SendChatData.fromJson(Map<String, dynamic> json) =>
      _$SendChatDataFromJson(json);
}
