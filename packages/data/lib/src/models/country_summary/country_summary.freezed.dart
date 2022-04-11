// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountrySummary _$CountrySummaryFromJson(Map<String, dynamic> json) {
  return _CountrySummary.fromJson(json);
}

/// @nodoc
class _$CountrySummaryTearOff {
  const _$CountrySummaryTearOff();

  _CountrySummary call(
      {@JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Confirmed') int? confirmed,
      @JsonKey(name: 'Deaths') int? deaths,
      @JsonKey(name: 'Recovered') int? recovered,
      @JsonKey(name: 'Active') int? active,
      @JsonKey(name: 'Date') DateTime? date}) {
    return _CountrySummary(
      country: country,
      confirmed: confirmed,
      deaths: deaths,
      recovered: recovered,
      active: active,
      date: date,
    );
  }

  CountrySummary fromJson(Map<String, Object?> json) {
    return CountrySummary.fromJson(json);
  }
}

/// @nodoc
const $CountrySummary = _$CountrySummaryTearOff();

/// @nodoc
mixin _$CountrySummary {
  @JsonKey(name: 'Country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'Confirmed')
  int? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: 'Deaths')
  int? get deaths => throw _privateConstructorUsedError;
  @JsonKey(name: 'Recovered')
  int? get recovered => throw _privateConstructorUsedError;
  @JsonKey(name: 'Active')
  int? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountrySummaryCopyWith<CountrySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountrySummaryCopyWith<$Res> {
  factory $CountrySummaryCopyWith(
          CountrySummary value, $Res Function(CountrySummary) then) =
      _$CountrySummaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Confirmed') int? confirmed,
      @JsonKey(name: 'Deaths') int? deaths,
      @JsonKey(name: 'Recovered') int? recovered,
      @JsonKey(name: 'Active') int? active,
      @JsonKey(name: 'Date') DateTime? date});
}

/// @nodoc
class _$CountrySummaryCopyWithImpl<$Res>
    implements $CountrySummaryCopyWith<$Res> {
  _$CountrySummaryCopyWithImpl(this._value, this._then);

  final CountrySummary _value;
  // ignore: unused_field
  final $Res Function(CountrySummary) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? active = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as int?,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int?,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as int?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$CountrySummaryCopyWith<$Res>
    implements $CountrySummaryCopyWith<$Res> {
  factory _$CountrySummaryCopyWith(
          _CountrySummary value, $Res Function(_CountrySummary) then) =
      __$CountrySummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Confirmed') int? confirmed,
      @JsonKey(name: 'Deaths') int? deaths,
      @JsonKey(name: 'Recovered') int? recovered,
      @JsonKey(name: 'Active') int? active,
      @JsonKey(name: 'Date') DateTime? date});
}

/// @nodoc
class __$CountrySummaryCopyWithImpl<$Res>
    extends _$CountrySummaryCopyWithImpl<$Res>
    implements _$CountrySummaryCopyWith<$Res> {
  __$CountrySummaryCopyWithImpl(
      _CountrySummary _value, $Res Function(_CountrySummary) _then)
      : super(_value, (v) => _then(v as _CountrySummary));

  @override
  _CountrySummary get _value => super._value as _CountrySummary;

  @override
  $Res call({
    Object? country = freezed,
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? active = freezed,
    Object? date = freezed,
  }) {
    return _then(_CountrySummary(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as int?,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int?,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as int?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountrySummary extends _CountrySummary {
  _$_CountrySummary(
      {@JsonKey(name: 'Country') this.country,
      @JsonKey(name: 'Confirmed') this.confirmed,
      @JsonKey(name: 'Deaths') this.deaths,
      @JsonKey(name: 'Recovered') this.recovered,
      @JsonKey(name: 'Active') this.active,
      @JsonKey(name: 'Date') this.date})
      : super._();

  factory _$_CountrySummary.fromJson(Map<String, dynamic> json) =>
      _$$_CountrySummaryFromJson(json);

  @override
  @JsonKey(name: 'Country')
  final String? country;
  @override
  @JsonKey(name: 'Confirmed')
  final int? confirmed;
  @override
  @JsonKey(name: 'Deaths')
  final int? deaths;
  @override
  @JsonKey(name: 'Recovered')
  final int? recovered;
  @override
  @JsonKey(name: 'Active')
  final int? active;
  @override
  @JsonKey(name: 'Date')
  final DateTime? date;

  @override
  String toString() {
    return 'CountrySummary(country: $country, confirmed: $confirmed, deaths: $deaths, recovered: $recovered, active: $active, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountrySummary &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.confirmed, confirmed) &&
            const DeepCollectionEquality().equals(other.deaths, deaths) &&
            const DeepCollectionEquality().equals(other.recovered, recovered) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(confirmed),
      const DeepCollectionEquality().hash(deaths),
      const DeepCollectionEquality().hash(recovered),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$CountrySummaryCopyWith<_CountrySummary> get copyWith =>
      __$CountrySummaryCopyWithImpl<_CountrySummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountrySummaryToJson(this);
  }
}

abstract class _CountrySummary extends CountrySummary {
  factory _CountrySummary(
      {@JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Confirmed') int? confirmed,
      @JsonKey(name: 'Deaths') int? deaths,
      @JsonKey(name: 'Recovered') int? recovered,
      @JsonKey(name: 'Active') int? active,
      @JsonKey(name: 'Date') DateTime? date}) = _$_CountrySummary;
  _CountrySummary._() : super._();

  factory _CountrySummary.fromJson(Map<String, dynamic> json) =
      _$_CountrySummary.fromJson;

  @override
  @JsonKey(name: 'Country')
  String? get country;
  @override
  @JsonKey(name: 'Confirmed')
  int? get confirmed;
  @override
  @JsonKey(name: 'Deaths')
  int? get deaths;
  @override
  @JsonKey(name: 'Recovered')
  int? get recovered;
  @override
  @JsonKey(name: 'Active')
  int? get active;
  @override
  @JsonKey(name: 'Date')
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$CountrySummaryCopyWith<_CountrySummary> get copyWith =>
      throw _privateConstructorUsedError;
}
