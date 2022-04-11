// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {@JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Slug') String? slug,
      @JsonKey(name: 'ISO2') String? iso2}) {
    return _Country(
      country: country,
      slug: slug,
      iso2: iso2,
    );
  }

  Country fromJson(Map<String, Object?> json) {
    return Country.fromJson(json);
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  @JsonKey(name: 'Country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'Slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'ISO2')
  String? get iso2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Slug') String? slug,
      @JsonKey(name: 'ISO2') String? iso2});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? slug = freezed,
    Object? iso2 = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      iso2: iso2 == freezed
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Slug') String? slug,
      @JsonKey(name: 'ISO2') String? iso2});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? country = freezed,
    Object? slug = freezed,
    Object? iso2 = freezed,
  }) {
    return _then(_Country(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      iso2: iso2 == freezed
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country extends _Country {
  _$_Country(
      {@JsonKey(name: 'Country') this.country,
      @JsonKey(name: 'Slug') this.slug,
      @JsonKey(name: 'ISO2') this.iso2})
      : super._();

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  @JsonKey(name: 'Country')
  final String? country;
  @override
  @JsonKey(name: 'Slug')
  final String? slug;
  @override
  @JsonKey(name: 'ISO2')
  final String? iso2;

  @override
  String toString() {
    return 'Country(country: $country, slug: $slug, iso2: $iso2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Country &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.iso2, iso2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(iso2));

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(this);
  }
}

abstract class _Country extends Country {
  factory _Country(
      {@JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Slug') String? slug,
      @JsonKey(name: 'ISO2') String? iso2}) = _$_Country;
  _Country._() : super._();

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  @JsonKey(name: 'Country')
  String? get country;
  @override
  @JsonKey(name: 'Slug')
  String? get slug;
  @override
  @JsonKey(name: 'ISO2')
  String? get iso2;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
