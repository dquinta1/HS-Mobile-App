// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contentfulblog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentfulBlog _$ContentfulBlogFromJson(Map<String, dynamic> json) {
  return _ContentfulBlog.fromJson(json);
}

/// @nodoc
class _$ContentfulBlogTearOff {
  const _$ContentfulBlogTearOff();

  _ContentfulBlog call(
      {required String title,
      required DateTime date,
      String? information,
      dynamic image}) {
    return _ContentfulBlog(
      title: title,
      date: date,
      information: information,
      image: image,
    );
  }

  ContentfulBlog fromJson(Map<String, Object?> json) {
    return ContentfulBlog.fromJson(json);
  }
}

/// @nodoc
const $ContentfulBlog = _$ContentfulBlogTearOff();

/// @nodoc
mixin _$ContentfulBlog {
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get information => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentfulBlogCopyWith<ContentfulBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentfulBlogCopyWith<$Res> {
  factory $ContentfulBlogCopyWith(
          ContentfulBlog value, $Res Function(ContentfulBlog) then) =
      _$ContentfulBlogCopyWithImpl<$Res>;
  $Res call({String title, DateTime date, String? information, dynamic image});
}

/// @nodoc
class _$ContentfulBlogCopyWithImpl<$Res>
    implements $ContentfulBlogCopyWith<$Res> {
  _$ContentfulBlogCopyWithImpl(this._value, this._then);

  final ContentfulBlog _value;
  // ignore: unused_field
  final $Res Function(ContentfulBlog) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
    Object? information = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      information: information == freezed
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ContentfulBlogCopyWith<$Res>
    implements $ContentfulBlogCopyWith<$Res> {
  factory _$ContentfulBlogCopyWith(
          _ContentfulBlog value, $Res Function(_ContentfulBlog) then) =
      __$ContentfulBlogCopyWithImpl<$Res>;
  @override
  $Res call({String title, DateTime date, String? information, dynamic image});
}

/// @nodoc
class __$ContentfulBlogCopyWithImpl<$Res>
    extends _$ContentfulBlogCopyWithImpl<$Res>
    implements _$ContentfulBlogCopyWith<$Res> {
  __$ContentfulBlogCopyWithImpl(
      _ContentfulBlog _value, $Res Function(_ContentfulBlog) _then)
      : super(_value, (v) => _then(v as _ContentfulBlog));

  @override
  _ContentfulBlog get _value => super._value as _ContentfulBlog;

  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
    Object? information = freezed,
    Object? image = freezed,
  }) {
    return _then(_ContentfulBlog(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      information: information == freezed
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentfulBlog implements _ContentfulBlog {
  _$_ContentfulBlog(
      {required this.title, required this.date, this.information, this.image});

  factory _$_ContentfulBlog.fromJson(Map<String, dynamic> json) =>
      _$$_ContentfulBlogFromJson(json);

  @override
  final String title;
  @override
  final DateTime date;
  @override
  final String? information;
  @override
  final dynamic image;

  @override
  String toString() {
    return 'ContentfulBlog(title: $title, date: $date, information: $information, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContentfulBlog &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.information, information) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(information),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$ContentfulBlogCopyWith<_ContentfulBlog> get copyWith =>
      __$ContentfulBlogCopyWithImpl<_ContentfulBlog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentfulBlogToJson(this);
  }
}

abstract class _ContentfulBlog implements ContentfulBlog {
  factory _ContentfulBlog(
      {required String title,
      required DateTime date,
      String? information,
      dynamic image}) = _$_ContentfulBlog;

  factory _ContentfulBlog.fromJson(Map<String, dynamic> json) =
      _$_ContentfulBlog.fromJson;

  @override
  String get title;
  @override
  DateTime get date;
  @override
  String? get information;
  @override
  dynamic get image;
  @override
  @JsonKey(ignore: true)
  _$ContentfulBlogCopyWith<_ContentfulBlog> get copyWith =>
      throw _privateConstructorUsedError;
}
