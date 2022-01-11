// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {required String id,
      required String title,
      String? subtitle,
      required String url,
      Publication? publication,
      Metadata? metadata,
      List<Paragraph> paragraphs = const [],
      required int imageId,
      required int imageThumbId,
      int? dbID}) {
    return _Post(
      id: id,
      title: title,
      subtitle: subtitle,
      url: url,
      publication: publication,
      metadata: metadata,
      paragraphs: paragraphs,
      imageId: imageId,
      imageThumbId: imageThumbId,
      dbID: dbID,
    );
  }

  Post fromJson(Map<String, Object?> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  Publication? get publication => throw _privateConstructorUsedError;
  Metadata? get metadata => throw _privateConstructorUsedError;
  List<Paragraph> get paragraphs => throw _privateConstructorUsedError;
  int get imageId => throw _privateConstructorUsedError;
  int get imageThumbId => throw _privateConstructorUsedError;
  int? get dbID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String? subtitle,
      String url,
      Publication? publication,
      Metadata? metadata,
      List<Paragraph> paragraphs,
      int imageId,
      int imageThumbId,
      int? dbID});

  $PublicationCopyWith<$Res>? get publication;
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? url = freezed,
    Object? publication = freezed,
    Object? metadata = freezed,
    Object? paragraphs = freezed,
    Object? imageId = freezed,
    Object? imageThumbId = freezed,
    Object? dbID = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publication: publication == freezed
          ? _value.publication
          : publication // ignore: cast_nullable_to_non_nullable
              as Publication?,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      paragraphs: paragraphs == freezed
          ? _value.paragraphs
          : paragraphs // ignore: cast_nullable_to_non_nullable
              as List<Paragraph>,
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      imageThumbId: imageThumbId == freezed
          ? _value.imageThumbId
          : imageThumbId // ignore: cast_nullable_to_non_nullable
              as int,
      dbID: dbID == freezed
          ? _value.dbID
          : dbID // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $PublicationCopyWith<$Res>? get publication {
    if (_value.publication == null) {
      return null;
    }

    return $PublicationCopyWith<$Res>(_value.publication!, (value) {
      return _then(_value.copyWith(publication: value));
    });
  }

  @override
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String? subtitle,
      String url,
      Publication? publication,
      Metadata? metadata,
      List<Paragraph> paragraphs,
      int imageId,
      int imageThumbId,
      int? dbID});

  @override
  $PublicationCopyWith<$Res>? get publication;
  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? url = freezed,
    Object? publication = freezed,
    Object? metadata = freezed,
    Object? paragraphs = freezed,
    Object? imageId = freezed,
    Object? imageThumbId = freezed,
    Object? dbID = freezed,
  }) {
    return _then(_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publication: publication == freezed
          ? _value.publication
          : publication // ignore: cast_nullable_to_non_nullable
              as Publication?,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      paragraphs: paragraphs == freezed
          ? _value.paragraphs
          : paragraphs // ignore: cast_nullable_to_non_nullable
              as List<Paragraph>,
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      imageThumbId: imageThumbId == freezed
          ? _value.imageThumbId
          : imageThumbId // ignore: cast_nullable_to_non_nullable
              as int,
      dbID: dbID == freezed
          ? _value.dbID
          : dbID // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  _$_Post(
      {required this.id,
      required this.title,
      this.subtitle,
      required this.url,
      this.publication,
      this.metadata,
      this.paragraphs = const [],
      required this.imageId,
      required this.imageThumbId,
      this.dbID});

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final String url;
  @override
  final Publication? publication;
  @override
  final Metadata? metadata;
  @JsonKey()
  @override
  final List<Paragraph> paragraphs;
  @override
  final int imageId;
  @override
  final int imageThumbId;
  @override
  final int? dbID;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, subtitle: $subtitle, url: $url, publication: $publication, metadata: $metadata, paragraphs: $paragraphs, imageId: $imageId, imageThumbId: $imageThumbId, dbID: $dbID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.publication, publication) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            const DeepCollectionEquality()
                .equals(other.paragraphs, paragraphs) &&
            const DeepCollectionEquality().equals(other.imageId, imageId) &&
            const DeepCollectionEquality()
                .equals(other.imageThumbId, imageThumbId) &&
            const DeepCollectionEquality().equals(other.dbID, dbID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(publication),
      const DeepCollectionEquality().hash(metadata),
      const DeepCollectionEquality().hash(paragraphs),
      const DeepCollectionEquality().hash(imageId),
      const DeepCollectionEquality().hash(imageThumbId),
      const DeepCollectionEquality().hash(dbID));

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(this);
  }
}

abstract class _Post implements Post {
  factory _Post(
      {required String id,
      required String title,
      String? subtitle,
      required String url,
      Publication? publication,
      Metadata? metadata,
      List<Paragraph> paragraphs,
      required int imageId,
      required int imageThumbId,
      int? dbID}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get subtitle;
  @override
  String get url;
  @override
  Publication? get publication;
  @override
  Metadata? get metadata;
  @override
  List<Paragraph> get paragraphs;
  @override
  int get imageId;
  @override
  int get imageThumbId;
  @override
  int? get dbID;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}
