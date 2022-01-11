// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'markup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Markup _$MarkupFromJson(Map<String, dynamic> json) {
  return _Markup.fromJson(json);
}

/// @nodoc
class _$MarkupTearOff {
  const _$MarkupTearOff();

  _Markup call(
      {required MarkupType type,
      required int start,
      required int end,
      String? href}) {
    return _Markup(
      type: type,
      start: start,
      end: end,
      href: href,
    );
  }

  Markup fromJson(Map<String, Object?> json) {
    return Markup.fromJson(json);
  }
}

/// @nodoc
const $Markup = _$MarkupTearOff();

/// @nodoc
mixin _$Markup {
  MarkupType get type => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkupCopyWith<Markup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkupCopyWith<$Res> {
  factory $MarkupCopyWith(Markup value, $Res Function(Markup) then) =
      _$MarkupCopyWithImpl<$Res>;
  $Res call({MarkupType type, int start, int end, String? href});
}

/// @nodoc
class _$MarkupCopyWithImpl<$Res> implements $MarkupCopyWith<$Res> {
  _$MarkupCopyWithImpl(this._value, this._then);

  final Markup _value;
  // ignore: unused_field
  final $Res Function(Markup) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MarkupType,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MarkupCopyWith<$Res> implements $MarkupCopyWith<$Res> {
  factory _$MarkupCopyWith(_Markup value, $Res Function(_Markup) then) =
      __$MarkupCopyWithImpl<$Res>;
  @override
  $Res call({MarkupType type, int start, int end, String? href});
}

/// @nodoc
class __$MarkupCopyWithImpl<$Res> extends _$MarkupCopyWithImpl<$Res>
    implements _$MarkupCopyWith<$Res> {
  __$MarkupCopyWithImpl(_Markup _value, $Res Function(_Markup) _then)
      : super(_value, (v) => _then(v as _Markup));

  @override
  _Markup get _value => super._value as _Markup;

  @override
  $Res call({
    Object? type = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? href = freezed,
  }) {
    return _then(_Markup(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MarkupType,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Markup implements _Markup {
  _$_Markup(
      {required this.type, required this.start, required this.end, this.href});

  factory _$_Markup.fromJson(Map<String, dynamic> json) =>
      _$$_MarkupFromJson(json);

  @override
  final MarkupType type;
  @override
  final int start;
  @override
  final int end;
  @override
  final String? href;

  @override
  String toString() {
    return 'Markup(type: $type, start: $start, end: $end, href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Markup &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.href, href));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(href));

  @JsonKey(ignore: true)
  @override
  _$MarkupCopyWith<_Markup> get copyWith =>
      __$MarkupCopyWithImpl<_Markup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarkupToJson(this);
  }
}

abstract class _Markup implements Markup {
  factory _Markup(
      {required MarkupType type,
      required int start,
      required int end,
      String? href}) = _$_Markup;

  factory _Markup.fromJson(Map<String, dynamic> json) = _$_Markup.fromJson;

  @override
  MarkupType get type;
  @override
  int get start;
  @override
  int get end;
  @override
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$MarkupCopyWith<_Markup> get copyWith => throw _privateConstructorUsedError;
}
