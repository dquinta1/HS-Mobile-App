// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

  Fetch fetch() {
    return const Fetch();
  }

  Refresh refresh() {
    return const Refresh();
  }

  FetchMore fetchMore(int index) {
    return FetchMore(
      index,
    );
  }

  SeeDetails seeDetails(String id) {
    return SeeDetails(
      id,
    );
  }
}

/// @nodoc
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() refresh,
    required TResult Function(int index) fetchMore,
    required TResult Function(String id) seeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Refresh value) refresh,
    required TResult Function(FetchMore value) fetchMore,
    required TResult Function(SeeDetails value) seeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class $FetchCopyWith<$Res> {
  factory $FetchCopyWith(Fetch value, $Res Function(Fetch) then) =
      _$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $FetchCopyWith<$Res> {
  _$FetchCopyWithImpl(Fetch _value, $Res Function(Fetch) _then)
      : super(_value, (v) => _then(v as Fetch));

  @override
  Fetch get _value => super._value as Fetch;
}

/// @nodoc

class _$Fetch implements Fetch {
  const _$Fetch();

  @override
  String toString() {
    return 'NewsEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() refresh,
    required TResult Function(int index) fetchMore,
    required TResult Function(String id) seeDetails,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Refresh value) refresh,
    required TResult Function(FetchMore value) fetchMore,
    required TResult Function(SeeDetails value) seeDetails,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements NewsEvent {
  const factory Fetch() = _$Fetch;
}

/// @nodoc
abstract class $RefreshCopyWith<$Res> {
  factory $RefreshCopyWith(Refresh value, $Res Function(Refresh) then) =
      _$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $RefreshCopyWith<$Res> {
  _$RefreshCopyWithImpl(Refresh _value, $Res Function(Refresh) _then)
      : super(_value, (v) => _then(v as Refresh));

  @override
  Refresh get _value => super._value as Refresh;
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'NewsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() refresh,
    required TResult Function(int index) fetchMore,
    required TResult Function(String id) seeDetails,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Refresh value) refresh,
    required TResult Function(FetchMore value) fetchMore,
    required TResult Function(SeeDetails value) seeDetails,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements NewsEvent {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class $FetchMoreCopyWith<$Res> {
  factory $FetchMoreCopyWith(FetchMore value, $Res Function(FetchMore) then) =
      _$FetchMoreCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$FetchMoreCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $FetchMoreCopyWith<$Res> {
  _$FetchMoreCopyWithImpl(FetchMore _value, $Res Function(FetchMore) _then)
      : super(_value, (v) => _then(v as FetchMore));

  @override
  FetchMore get _value => super._value as FetchMore;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(FetchMore(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchMore implements FetchMore {
  const _$FetchMore(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'NewsEvent.fetchMore(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchMore &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $FetchMoreCopyWith<FetchMore> get copyWith =>
      _$FetchMoreCopyWithImpl<FetchMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() refresh,
    required TResult Function(int index) fetchMore,
    required TResult Function(String id) seeDetails,
  }) {
    return fetchMore(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
  }) {
    return fetchMore?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Refresh value) refresh,
    required TResult Function(FetchMore value) fetchMore,
    required TResult Function(SeeDetails value) seeDetails,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class FetchMore implements NewsEvent {
  const factory FetchMore(int index) = _$FetchMore;

  int get index;
  @JsonKey(ignore: true)
  $FetchMoreCopyWith<FetchMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeeDetailsCopyWith<$Res> {
  factory $SeeDetailsCopyWith(
          SeeDetails value, $Res Function(SeeDetails) then) =
      _$SeeDetailsCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$SeeDetailsCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $SeeDetailsCopyWith<$Res> {
  _$SeeDetailsCopyWithImpl(SeeDetails _value, $Res Function(SeeDetails) _then)
      : super(_value, (v) => _then(v as SeeDetails));

  @override
  SeeDetails get _value => super._value as SeeDetails;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(SeeDetails(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SeeDetails implements SeeDetails {
  const _$SeeDetails(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NewsEvent.seeDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SeeDetails &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $SeeDetailsCopyWith<SeeDetails> get copyWith =>
      _$SeeDetailsCopyWithImpl<SeeDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() refresh,
    required TResult Function(int index) fetchMore,
    required TResult Function(String id) seeDetails,
  }) {
    return seeDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
  }) {
    return seeDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? refresh,
    TResult Function(int index)? fetchMore,
    TResult Function(String id)? seeDetails,
    required TResult orElse(),
  }) {
    if (seeDetails != null) {
      return seeDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Refresh value) refresh,
    required TResult Function(FetchMore value) fetchMore,
    required TResult Function(SeeDetails value) seeDetails,
  }) {
    return seeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
  }) {
    return seeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Refresh value)? refresh,
    TResult Function(FetchMore value)? fetchMore,
    TResult Function(SeeDetails value)? seeDetails,
    required TResult orElse(),
  }) {
    if (seeDetails != null) {
      return seeDetails(this);
    }
    return orElse();
  }
}

abstract class SeeDetails implements NewsEvent {
  const factory SeeDetails(String id) = _$SeeDetails;

  String get id;
  @JsonKey(ignore: true)
  $SeeDetailsCopyWith<SeeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  Loading loading() {
    return const Loading();
  }

  Blogs blogs(
      {bool refreshing = false,
      bool fetchingMore = false,
      required List<Blog>? blogs}) {
    return Blogs(
      refreshing: refreshing,
      fetchingMore: fetchingMore,
      blogs: blogs,
    );
  }

  Details details({required Blog? blog}) {
    return Details(
      blog: blog,
    );
  }

  ErrorState error({required BlogFailure? e}) {
    return ErrorState(
      e: e,
    );
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool refreshing, bool fetchingMore, List<Blog>? blogs)
        blogs,
    required TResult Function(Blog? blog) details,
    required TResult Function(BlogFailure? e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Blogs value) blogs,
    required TResult Function(Details value) details,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool refreshing, bool fetchingMore, List<Blog>? blogs)
        blogs,
    required TResult Function(Blog? blog) details,
    required TResult Function(BlogFailure? e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Blogs value) blogs,
    required TResult Function(Details value) details,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements NewsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $BlogsCopyWith<$Res> {
  factory $BlogsCopyWith(Blogs value, $Res Function(Blogs) then) =
      _$BlogsCopyWithImpl<$Res>;
  $Res call({bool refreshing, bool fetchingMore, List<Blog>? blogs});
}

/// @nodoc
class _$BlogsCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $BlogsCopyWith<$Res> {
  _$BlogsCopyWithImpl(Blogs _value, $Res Function(Blogs) _then)
      : super(_value, (v) => _then(v as Blogs));

  @override
  Blogs get _value => super._value as Blogs;

  @override
  $Res call({
    Object? refreshing = freezed,
    Object? fetchingMore = freezed,
    Object? blogs = freezed,
  }) {
    return _then(Blogs(
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
    ));
  }
}

/// @nodoc

class _$Blogs implements Blogs {
  const _$Blogs(
      {this.refreshing = false,
      this.fetchingMore = false,
      required this.blogs});

  @JsonKey()
  @override
  final bool refreshing;
  @JsonKey()
  @override
  final bool fetchingMore;
  @override
  final List<Blog>? blogs;

  @override
  String toString() {
    return 'NewsState.blogs(refreshing: $refreshing, fetchingMore: $fetchingMore, blogs: $blogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Blogs &&
            const DeepCollectionEquality()
                .equals(other.refreshing, refreshing) &&
            const DeepCollectionEquality()
                .equals(other.fetchingMore, fetchingMore) &&
            const DeepCollectionEquality().equals(other.blogs, blogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(refreshing),
      const DeepCollectionEquality().hash(fetchingMore),
      const DeepCollectionEquality().hash(blogs));

  @JsonKey(ignore: true)
  @override
  $BlogsCopyWith<Blogs> get copyWith =>
      _$BlogsCopyWithImpl<Blogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool refreshing, bool fetchingMore, List<Blog>? blogs)
        blogs,
    required TResult Function(Blog? blog) details,
    required TResult Function(BlogFailure? e) error,
  }) {
    return blogs(refreshing, fetchingMore, this.blogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
  }) {
    return blogs?.call(refreshing, fetchingMore, this.blogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
    required TResult orElse(),
  }) {
    if (blogs != null) {
      return blogs(refreshing, fetchingMore, this.blogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Blogs value) blogs,
    required TResult Function(Details value) details,
    required TResult Function(ErrorState value) error,
  }) {
    return blogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
  }) {
    return blogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (blogs != null) {
      return blogs(this);
    }
    return orElse();
  }
}

abstract class Blogs implements NewsState {
  const factory Blogs(
      {bool refreshing,
      bool fetchingMore,
      required List<Blog>? blogs}) = _$Blogs;

  bool get refreshing;
  bool get fetchingMore;
  List<Blog>? get blogs;
  @JsonKey(ignore: true)
  $BlogsCopyWith<Blogs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res>;
  $Res call({Blog? blog});

  $BlogCopyWith<$Res>? get blog;
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(Details _value, $Res Function(Details) _then)
      : super(_value, (v) => _then(v as Details));

  @override
  Details get _value => super._value as Details;

  @override
  $Res call({
    Object? blog = freezed,
  }) {
    return _then(Details(
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog?,
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

class _$Details implements Details {
  const _$Details({required this.blog});

  @override
  final Blog? blog;

  @override
  String toString() {
    return 'NewsState.details(blog: $blog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Details &&
            const DeepCollectionEquality().equals(other.blog, blog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(blog));

  @JsonKey(ignore: true)
  @override
  $DetailsCopyWith<Details> get copyWith =>
      _$DetailsCopyWithImpl<Details>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool refreshing, bool fetchingMore, List<Blog>? blogs)
        blogs,
    required TResult Function(Blog? blog) details,
    required TResult Function(BlogFailure? e) error,
  }) {
    return details(blog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
  }) {
    return details?.call(blog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(blog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Blogs value) blogs,
    required TResult Function(Details value) details,
    required TResult Function(ErrorState value) error,
  }) {
    return details(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
  }) {
    return details?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(this);
    }
    return orElse();
  }
}

abstract class Details implements NewsState {
  const factory Details({required Blog? blog}) = _$Details;

  Blog? get blog;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  $Res call({BlogFailure? e});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(ErrorState(
      e: e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as BlogFailure?,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  const _$ErrorState({required this.e});

  @override
  final BlogFailure? e;

  @override
  String toString() {
    return 'NewsState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorState &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool refreshing, bool fetchingMore, List<Blog>? blogs)
        blogs,
    required TResult Function(Blog? blog) details,
    required TResult Function(BlogFailure? e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool refreshing, bool fetchingMore, List<Blog>? blogs)?
        blogs,
    TResult Function(Blog? blog)? details,
    TResult Function(BlogFailure? e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Blogs value) blogs,
    required TResult Function(Details value) details,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Blogs value)? blogs,
    TResult Function(Details value)? details,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements NewsState {
  const factory ErrorState({required BlogFailure? e}) = _$ErrorState;

  BlogFailure? get e;
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
