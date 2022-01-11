// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'publication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Publication _$PublicationFromJson(Map<String, dynamic> json) {
  return _Publication.fromJson(json);
}

/// @nodoc
class _$PublicationTearOff {
  const _$PublicationTearOff();

  _Publication call({required String name, required String logoUrl}) {
    return _Publication(
      name: name,
      logoUrl: logoUrl,
    );
  }

  Publication fromJson(Map<String, Object?> json) {
    return Publication.fromJson(json);
  }
}

/// @nodoc
const $Publication = _$PublicationTearOff();

/// @nodoc
mixin _$Publication {
  String get name => throw _privateConstructorUsedError;
  String get logoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicationCopyWith<Publication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicationCopyWith<$Res> {
  factory $PublicationCopyWith(
          Publication value, $Res Function(Publication) then) =
      _$PublicationCopyWithImpl<$Res>;
  $Res call({String name, String logoUrl});
}

/// @nodoc
class _$PublicationCopyWithImpl<$Res> implements $PublicationCopyWith<$Res> {
  _$PublicationCopyWithImpl(this._value, this._then);

  final Publication _value;
  // ignore: unused_field
  final $Res Function(Publication) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? logoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PublicationCopyWith<$Res>
    implements $PublicationCopyWith<$Res> {
  factory _$PublicationCopyWith(
          _Publication value, $Res Function(_Publication) then) =
      __$PublicationCopyWithImpl<$Res>;
  @override
  $Res call({String name, String logoUrl});
}

/// @nodoc
class __$PublicationCopyWithImpl<$Res> extends _$PublicationCopyWithImpl<$Res>
    implements _$PublicationCopyWith<$Res> {
  __$PublicationCopyWithImpl(
      _Publication _value, $Res Function(_Publication) _then)
      : super(_value, (v) => _then(v as _Publication));

  @override
  _Publication get _value => super._value as _Publication;

  @override
  $Res call({
    Object? name = freezed,
    Object? logoUrl = freezed,
  }) {
    return _then(_Publication(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Publication implements _Publication {
  _$_Publication({required this.name, required this.logoUrl});

  factory _$_Publication.fromJson(Map<String, dynamic> json) =>
      _$$_PublicationFromJson(json);

  @override
  final String name;
  @override
  final String logoUrl;

  @override
  String toString() {
    return 'Publication(name: $name, logoUrl: $logoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Publication &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logoUrl, logoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(logoUrl));

  @JsonKey(ignore: true)
  @override
  _$PublicationCopyWith<_Publication> get copyWith =>
      __$PublicationCopyWithImpl<_Publication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublicationToJson(this);
  }
}

abstract class _Publication implements Publication {
  factory _Publication({required String name, required String logoUrl}) =
      _$_Publication;

  factory _Publication.fromJson(Map<String, dynamic> json) =
      _$_Publication.fromJson;

  @override
  String get name;
  @override
  String get logoUrl;
  @override
  @JsonKey(ignore: true)
  _$PublicationCopyWith<_Publication> get copyWith =>
      throw _privateConstructorUsedError;
}
