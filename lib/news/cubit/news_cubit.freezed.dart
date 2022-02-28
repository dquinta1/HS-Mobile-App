// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  _NewsState call(
      {bool loading = false,
      bool refreshing = false,
      bool fetchingMore = false,
      List<Blog>? blogs,
      Blog? blog,
      String? errorMessage}) {
    return _NewsState(
      loading: loading,
      refreshing: refreshing,
      fetchingMore: fetchingMore,
      blogs: blogs,
      blog: blog,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  bool get loading => throw _privateConstructorUsedError;
  bool get refreshing => throw _privateConstructorUsedError;
  bool get fetchingMore => throw _privateConstructorUsedError;
  List<Blog>? get blogs => throw _privateConstructorUsedError;
  Blog? get blog => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      bool refreshing,
      bool fetchingMore,
      List<Blog>? blogs,
      Blog? blog,
      String? errorMessage});

  $BlogCopyWith<$Res>? get blog;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? refreshing = freezed,
    Object? fetchingMore = freezed,
    Object? blogs = freezed,
    Object? blog = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshing: refreshing == freezed
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchingMore: fetchingMore == freezed
          ? _value.fetchingMore
          : fetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>?,
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $BlogCopyWith<$Res>? get blog {
    if (_value.blog == null) {
      return null;
    }

    return $BlogCopyWith<$Res>(_value.blog!, (value) {
      return _then(_value.copyWith(blog: value));
    });
  }
}

/// @nodoc
abstract class _$NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$NewsStateCopyWith(
          _NewsState value, $Res Function(_NewsState) then) =
      __$NewsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      bool refreshing,
      bool fetchingMore,
      List<Blog>? blogs,
      Blog? blog,
      String? errorMessage});

  @override
  $BlogCopyWith<$Res>? get blog;
}

/// @nodoc
class __$NewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateCopyWith<$Res> {
  __$NewsStateCopyWithImpl(_NewsState _value, $Res Function(_NewsState) _then)
      : super(_value, (v) => _then(v as _NewsState));

  @override
  _NewsState get _value => super._value as _NewsState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? refreshing = freezed,
    Object? fetchingMore = freezed,
    Object? blogs = freezed,
    Object? blog = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_NewsState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshing: refreshing == freezed
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchingMore: fetchingMore == freezed
          ? _value.fetchingMore
          : fetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>?,
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NewsState implements _NewsState {
  const _$_NewsState(
      {this.loading = false,
      this.refreshing = false,
      this.fetchingMore = false,
      this.blogs,
      this.blog,
      this.errorMessage});

  @JsonKey()
  @override
  final bool loading;
  @JsonKey()
  @override
  final bool refreshing;
  @JsonKey()
  @override
  final bool fetchingMore;
  @override
  final List<Blog>? blogs;
  @override
  final Blog? blog;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NewsState(loading: $loading, refreshing: $refreshing, fetchingMore: $fetchingMore, blogs: $blogs, blog: $blog, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.refreshing, refreshing) &&
            const DeepCollectionEquality()
                .equals(other.fetchingMore, fetchingMore) &&
            const DeepCollectionEquality().equals(other.blogs, blogs) &&
            const DeepCollectionEquality().equals(other.blog, blog) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(refreshing),
      const DeepCollectionEquality().hash(fetchingMore),
      const DeepCollectionEquality().hash(blogs),
      const DeepCollectionEquality().hash(blog),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      __$NewsStateCopyWithImpl<_NewsState>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  const factory _NewsState(
      {bool loading,
      bool refreshing,
      bool fetchingMore,
      List<Blog>? blogs,
      Blog? blog,
      String? errorMessage}) = _$_NewsState;

  @override
  bool get loading;
  @override
  bool get refreshing;
  @override
  bool get fetchingMore;
  @override
  List<Blog>? get blogs;
  @override
  Blog? get blog;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
