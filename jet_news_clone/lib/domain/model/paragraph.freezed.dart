// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paragraph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Paragraph _$ParagraphFromJson(Map<String, dynamic> json) {
  return _Paragraph.fromJson(json);
}

/// @nodoc
class _$ParagraphTearOff {
  const _$ParagraphTearOff();

  _Paragraph call(
      {required ParagraphType type,
      required String text,
      List<Markup> markups = const []}) {
    return _Paragraph(
      type: type,
      text: text,
      markups: markups,
    );
  }

  Paragraph fromJson(Map<String, Object?> json) {
    return Paragraph.fromJson(json);
  }
}

/// @nodoc
const $Paragraph = _$ParagraphTearOff();

/// @nodoc
mixin _$Paragraph {
  ParagraphType get type => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<Markup> get markups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParagraphCopyWith<Paragraph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParagraphCopyWith<$Res> {
  factory $ParagraphCopyWith(Paragraph value, $Res Function(Paragraph) then) =
      _$ParagraphCopyWithImpl<$Res>;
  $Res call({ParagraphType type, String text, List<Markup> markups});
}

/// @nodoc
class _$ParagraphCopyWithImpl<$Res> implements $ParagraphCopyWith<$Res> {
  _$ParagraphCopyWithImpl(this._value, this._then);

  final Paragraph _value;
  // ignore: unused_field
  final $Res Function(Paragraph) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? text = freezed,
    Object? markups = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ParagraphType,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      markups: markups == freezed
          ? _value.markups
          : markups // ignore: cast_nullable_to_non_nullable
              as List<Markup>,
    ));
  }
}

/// @nodoc
abstract class _$ParagraphCopyWith<$Res> implements $ParagraphCopyWith<$Res> {
  factory _$ParagraphCopyWith(
          _Paragraph value, $Res Function(_Paragraph) then) =
      __$ParagraphCopyWithImpl<$Res>;
  @override
  $Res call({ParagraphType type, String text, List<Markup> markups});
}

/// @nodoc
class __$ParagraphCopyWithImpl<$Res> extends _$ParagraphCopyWithImpl<$Res>
    implements _$ParagraphCopyWith<$Res> {
  __$ParagraphCopyWithImpl(_Paragraph _value, $Res Function(_Paragraph) _then)
      : super(_value, (v) => _then(v as _Paragraph));

  @override
  _Paragraph get _value => super._value as _Paragraph;

  @override
  $Res call({
    Object? type = freezed,
    Object? text = freezed,
    Object? markups = freezed,
  }) {
    return _then(_Paragraph(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ParagraphType,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      markups: markups == freezed
          ? _value.markups
          : markups // ignore: cast_nullable_to_non_nullable
              as List<Markup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Paragraph implements _Paragraph {
  _$_Paragraph(
      {required this.type, required this.text, this.markups = const []});

  factory _$_Paragraph.fromJson(Map<String, dynamic> json) =>
      _$$_ParagraphFromJson(json);

  @override
  final ParagraphType type;
  @override
  final String text;
  @JsonKey()
  @override
  final List<Markup> markups;

  @override
  String toString() {
    return 'Paragraph(type: $type, text: $text, markups: $markups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Paragraph &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.markups, markups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(markups));

  @JsonKey(ignore: true)
  @override
  _$ParagraphCopyWith<_Paragraph> get copyWith =>
      __$ParagraphCopyWithImpl<_Paragraph>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParagraphToJson(this);
  }
}

abstract class _Paragraph implements Paragraph {
  factory _Paragraph(
      {required ParagraphType type,
      required String text,
      List<Markup> markups}) = _$_Paragraph;

  factory _Paragraph.fromJson(Map<String, dynamic> json) =
      _$_Paragraph.fromJson;

  @override
  ParagraphType get type;
  @override
  String get text;
  @override
  List<Markup> get markups;
  @override
  @JsonKey(ignore: true)
  _$ParagraphCopyWith<_Paragraph> get copyWith =>
      throw _privateConstructorUsedError;
}
