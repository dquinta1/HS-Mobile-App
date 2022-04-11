// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GlobalSummary _$GlobalSummaryFromJson(Map<String, dynamic> json) {
  return _GlobalSummary.fromJson(json);
}

/// @nodoc
class _$GlobalSummaryTearOff {
  const _$GlobalSummaryTearOff();

  _GlobalSummary call(
      {@JsonKey(name: 'NewConfirmed') required int newConfirmed,
      @JsonKey(name: 'TotalConfirmed') required int totalConfirmed,
      @JsonKey(name: 'NewDeaths') required int newDeaths,
      @JsonKey(name: 'TotalDeaths') required int totalDeaths,
      @JsonKey(name: 'NewRecovered') required int newRecovered,
      @JsonKey(name: 'TotalRecovered') required int totalRecovered,
      @JsonKey(name: 'Date') DateTime? date}) {
    return _GlobalSummary(
      newConfirmed: newConfirmed,
      totalConfirmed: totalConfirmed,
      newDeaths: newDeaths,
      totalDeaths: totalDeaths,
      newRecovered: newRecovered,
      totalRecovered: totalRecovered,
      date: date,
    );
  }

  GlobalSummary fromJson(Map<String, Object?> json) {
    return GlobalSummary.fromJson(json);
  }
}

/// @nodoc
const $GlobalSummary = _$GlobalSummaryTearOff();

/// @nodoc
mixin _$GlobalSummary {
  @JsonKey(name: 'NewConfirmed')
  int get newConfirmed => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalConfirmed')
  int get totalConfirmed => throw _privateConstructorUsedError;
  @JsonKey(name: 'NewDeaths')
  int get newDeaths => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalDeaths')
  int get totalDeaths => throw _privateConstructorUsedError;
  @JsonKey(name: 'NewRecovered')
  int get newRecovered => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalRecovered')
  int get totalRecovered => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalSummaryCopyWith<GlobalSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalSummaryCopyWith<$Res> {
  factory $GlobalSummaryCopyWith(
          GlobalSummary value, $Res Function(GlobalSummary) then) =
      _$GlobalSummaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'NewConfirmed') int newConfirmed,
      @JsonKey(name: 'TotalConfirmed') int totalConfirmed,
      @JsonKey(name: 'NewDeaths') int newDeaths,
      @JsonKey(name: 'TotalDeaths') int totalDeaths,
      @JsonKey(name: 'NewRecovered') int newRecovered,
      @JsonKey(name: 'TotalRecovered') int totalRecovered,
      @JsonKey(name: 'Date') DateTime? date});
}

/// @nodoc
class _$GlobalSummaryCopyWithImpl<$Res>
    implements $GlobalSummaryCopyWith<$Res> {
  _$GlobalSummaryCopyWithImpl(this._value, this._then);

  final GlobalSummary _value;
  // ignore: unused_field
  final $Res Function(GlobalSummary) _then;

  @override
  $Res call({
    Object? newConfirmed = freezed,
    Object? totalConfirmed = freezed,
    Object? newDeaths = freezed,
    Object? totalDeaths = freezed,
    Object? newRecovered = freezed,
    Object? totalRecovered = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      newConfirmed: newConfirmed == freezed
          ? _value.newConfirmed
          : newConfirmed // ignore: cast_nullable_to_non_nullable
              as int,
      totalConfirmed: totalConfirmed == freezed
          ? _value.totalConfirmed
          : totalConfirmed // ignore: cast_nullable_to_non_nullable
              as int,
      newDeaths: newDeaths == freezed
          ? _value.newDeaths
          : newDeaths // ignore: cast_nullable_to_non_nullable
              as int,
      totalDeaths: totalDeaths == freezed
          ? _value.totalDeaths
          : totalDeaths // ignore: cast_nullable_to_non_nullable
              as int,
      newRecovered: newRecovered == freezed
          ? _value.newRecovered
          : newRecovered // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecovered: totalRecovered == freezed
          ? _value.totalRecovered
          : totalRecovered // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$GlobalSummaryCopyWith<$Res>
    implements $GlobalSummaryCopyWith<$Res> {
  factory _$GlobalSummaryCopyWith(
          _GlobalSummary value, $Res Function(_GlobalSummary) then) =
      __$GlobalSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'NewConfirmed') int newConfirmed,
      @JsonKey(name: 'TotalConfirmed') int totalConfirmed,
      @JsonKey(name: 'NewDeaths') int newDeaths,
      @JsonKey(name: 'TotalDeaths') int totalDeaths,
      @JsonKey(name: 'NewRecovered') int newRecovered,
      @JsonKey(name: 'TotalRecovered') int totalRecovered,
      @JsonKey(name: 'Date') DateTime? date});
}

/// @nodoc
class __$GlobalSummaryCopyWithImpl<$Res>
    extends _$GlobalSummaryCopyWithImpl<$Res>
    implements _$GlobalSummaryCopyWith<$Res> {
  __$GlobalSummaryCopyWithImpl(
      _GlobalSummary _value, $Res Function(_GlobalSummary) _then)
      : super(_value, (v) => _then(v as _GlobalSummary));

  @override
  _GlobalSummary get _value => super._value as _GlobalSummary;

  @override
  $Res call({
    Object? newConfirmed = freezed,
    Object? totalConfirmed = freezed,
    Object? newDeaths = freezed,
    Object? totalDeaths = freezed,
    Object? newRecovered = freezed,
    Object? totalRecovered = freezed,
    Object? date = freezed,
  }) {
    return _then(_GlobalSummary(
      newConfirmed: newConfirmed == freezed
          ? _value.newConfirmed
          : newConfirmed // ignore: cast_nullable_to_non_nullable
              as int,
      totalConfirmed: totalConfirmed == freezed
          ? _value.totalConfirmed
          : totalConfirmed // ignore: cast_nullable_to_non_nullable
              as int,
      newDeaths: newDeaths == freezed
          ? _value.newDeaths
          : newDeaths // ignore: cast_nullable_to_non_nullable
              as int,
      totalDeaths: totalDeaths == freezed
          ? _value.totalDeaths
          : totalDeaths // ignore: cast_nullable_to_non_nullable
              as int,
      newRecovered: newRecovered == freezed
          ? _value.newRecovered
          : newRecovered // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecovered: totalRecovered == freezed
          ? _value.totalRecovered
          : totalRecovered // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GlobalSummary extends _GlobalSummary {
  _$_GlobalSummary(
      {@JsonKey(name: 'NewConfirmed') required this.newConfirmed,
      @JsonKey(name: 'TotalConfirmed') required this.totalConfirmed,
      @JsonKey(name: 'NewDeaths') required this.newDeaths,
      @JsonKey(name: 'TotalDeaths') required this.totalDeaths,
      @JsonKey(name: 'NewRecovered') required this.newRecovered,
      @JsonKey(name: 'TotalRecovered') required this.totalRecovered,
      @JsonKey(name: 'Date') this.date})
      : super._();

  factory _$_GlobalSummary.fromJson(Map<String, dynamic> json) =>
      _$$_GlobalSummaryFromJson(json);

  @override
  @JsonKey(name: 'NewConfirmed')
  final int newConfirmed;
  @override
  @JsonKey(name: 'TotalConfirmed')
  final int totalConfirmed;
  @override
  @JsonKey(name: 'NewDeaths')
  final int newDeaths;
  @override
  @JsonKey(name: 'TotalDeaths')
  final int totalDeaths;
  @override
  @JsonKey(name: 'NewRecovered')
  final int newRecovered;
  @override
  @JsonKey(name: 'TotalRecovered')
  final int totalRecovered;
  @override
  @JsonKey(name: 'Date')
  final DateTime? date;

  @override
  String toString() {
    return 'GlobalSummary(newConfirmed: $newConfirmed, totalConfirmed: $totalConfirmed, newDeaths: $newDeaths, totalDeaths: $totalDeaths, newRecovered: $newRecovered, totalRecovered: $totalRecovered, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GlobalSummary &&
            const DeepCollectionEquality()
                .equals(other.newConfirmed, newConfirmed) &&
            const DeepCollectionEquality()
                .equals(other.totalConfirmed, totalConfirmed) &&
            const DeepCollectionEquality().equals(other.newDeaths, newDeaths) &&
            const DeepCollectionEquality()
                .equals(other.totalDeaths, totalDeaths) &&
            const DeepCollectionEquality()
                .equals(other.newRecovered, newRecovered) &&
            const DeepCollectionEquality()
                .equals(other.totalRecovered, totalRecovered) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newConfirmed),
      const DeepCollectionEquality().hash(totalConfirmed),
      const DeepCollectionEquality().hash(newDeaths),
      const DeepCollectionEquality().hash(totalDeaths),
      const DeepCollectionEquality().hash(newRecovered),
      const DeepCollectionEquality().hash(totalRecovered),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$GlobalSummaryCopyWith<_GlobalSummary> get copyWith =>
      __$GlobalSummaryCopyWithImpl<_GlobalSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GlobalSummaryToJson(this);
  }
}

abstract class _GlobalSummary extends GlobalSummary {
  factory _GlobalSummary(
      {@JsonKey(name: 'NewConfirmed') required int newConfirmed,
      @JsonKey(name: 'TotalConfirmed') required int totalConfirmed,
      @JsonKey(name: 'NewDeaths') required int newDeaths,
      @JsonKey(name: 'TotalDeaths') required int totalDeaths,
      @JsonKey(name: 'NewRecovered') required int newRecovered,
      @JsonKey(name: 'TotalRecovered') required int totalRecovered,
      @JsonKey(name: 'Date') DateTime? date}) = _$_GlobalSummary;
  _GlobalSummary._() : super._();

  factory _GlobalSummary.fromJson(Map<String, dynamic> json) =
      _$_GlobalSummary.fromJson;

  @override
  @JsonKey(name: 'NewConfirmed')
  int get newConfirmed;
  @override
  @JsonKey(name: 'TotalConfirmed')
  int get totalConfirmed;
  @override
  @JsonKey(name: 'NewDeaths')
  int get newDeaths;
  @override
  @JsonKey(name: 'TotalDeaths')
  int get totalDeaths;
  @override
  @JsonKey(name: 'NewRecovered')
  int get newRecovered;
  @override
  @JsonKey(name: 'TotalRecovered')
  int get totalRecovered;
  @override
  @JsonKey(name: 'Date')
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$GlobalSummaryCopyWith<_GlobalSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
