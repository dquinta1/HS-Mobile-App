// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {String? name,
      String? photo,
      String? city,
      String? currentCountry,
      String? selectedCountry,
      NavigationStatus? navStatus,
      List<CountrySummary>? countrySummary,
      GlobalSummary? globalSummary,
      List<Country>? countries,
      TimeCase? timeCase,
      bool locationLoading = false,
      bool countriesLoading = false,
      bool summaryLoading = false,
      bool globalSummaryLoading = false}) {
    return _HomeState(
      name: name,
      photo: photo,
      city: city,
      currentCountry: currentCountry,
      selectedCountry: selectedCountry,
      navStatus: navStatus,
      countrySummary: countrySummary,
      globalSummary: globalSummary,
      countries: countries,
      timeCase: timeCase,
      locationLoading: locationLoading,
      countriesLoading: countriesLoading,
      summaryLoading: summaryLoading,
      globalSummaryLoading: globalSummaryLoading,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get currentCountry => throw _privateConstructorUsedError;
  String? get selectedCountry => throw _privateConstructorUsedError;
  NavigationStatus? get navStatus => throw _privateConstructorUsedError;
  List<CountrySummary>? get countrySummary =>
      throw _privateConstructorUsedError;
  GlobalSummary? get globalSummary => throw _privateConstructorUsedError;
  List<Country>? get countries => throw _privateConstructorUsedError;
  TimeCase? get timeCase => throw _privateConstructorUsedError;
  bool get locationLoading => throw _privateConstructorUsedError;
  bool get countriesLoading => throw _privateConstructorUsedError;
  bool get summaryLoading => throw _privateConstructorUsedError;
  bool get globalSummaryLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? photo,
      String? city,
      String? currentCountry,
      String? selectedCountry,
      NavigationStatus? navStatus,
      List<CountrySummary>? countrySummary,
      GlobalSummary? globalSummary,
      List<Country>? countries,
      TimeCase? timeCase,
      bool locationLoading,
      bool countriesLoading,
      bool summaryLoading,
      bool globalSummaryLoading});

  $GlobalSummaryCopyWith<$Res>? get globalSummary;
  $TimeCaseCopyWith<$Res>? get timeCase;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? city = freezed,
    Object? currentCountry = freezed,
    Object? selectedCountry = freezed,
    Object? navStatus = freezed,
    Object? countrySummary = freezed,
    Object? globalSummary = freezed,
    Object? countries = freezed,
    Object? timeCase = freezed,
    Object? locationLoading = freezed,
    Object? countriesLoading = freezed,
    Object? summaryLoading = freezed,
    Object? globalSummaryLoading = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      currentCountry: currentCountry == freezed
          ? _value.currentCountry
          : currentCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      navStatus: navStatus == freezed
          ? _value.navStatus
          : navStatus // ignore: cast_nullable_to_non_nullable
              as NavigationStatus?,
      countrySummary: countrySummary == freezed
          ? _value.countrySummary
          : countrySummary // ignore: cast_nullable_to_non_nullable
              as List<CountrySummary>?,
      globalSummary: globalSummary == freezed
          ? _value.globalSummary
          : globalSummary // ignore: cast_nullable_to_non_nullable
              as GlobalSummary?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      timeCase: timeCase == freezed
          ? _value.timeCase
          : timeCase // ignore: cast_nullable_to_non_nullable
              as TimeCase?,
      locationLoading: locationLoading == freezed
          ? _value.locationLoading
          : locationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      countriesLoading: countriesLoading == freezed
          ? _value.countriesLoading
          : countriesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      summaryLoading: summaryLoading == freezed
          ? _value.summaryLoading
          : summaryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      globalSummaryLoading: globalSummaryLoading == freezed
          ? _value.globalSummaryLoading
          : globalSummaryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $GlobalSummaryCopyWith<$Res>? get globalSummary {
    if (_value.globalSummary == null) {
      return null;
    }

    return $GlobalSummaryCopyWith<$Res>(_value.globalSummary!, (value) {
      return _then(_value.copyWith(globalSummary: value));
    });
  }

  @override
  $TimeCaseCopyWith<$Res>? get timeCase {
    if (_value.timeCase == null) {
      return null;
    }

    return $TimeCaseCopyWith<$Res>(_value.timeCase!, (value) {
      return _then(_value.copyWith(timeCase: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? photo,
      String? city,
      String? currentCountry,
      String? selectedCountry,
      NavigationStatus? navStatus,
      List<CountrySummary>? countrySummary,
      GlobalSummary? globalSummary,
      List<Country>? countries,
      TimeCase? timeCase,
      bool locationLoading,
      bool countriesLoading,
      bool summaryLoading,
      bool globalSummaryLoading});

  @override
  $GlobalSummaryCopyWith<$Res>? get globalSummary;
  @override
  $TimeCaseCopyWith<$Res>? get timeCase;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? city = freezed,
    Object? currentCountry = freezed,
    Object? selectedCountry = freezed,
    Object? navStatus = freezed,
    Object? countrySummary = freezed,
    Object? globalSummary = freezed,
    Object? countries = freezed,
    Object? timeCase = freezed,
    Object? locationLoading = freezed,
    Object? countriesLoading = freezed,
    Object? summaryLoading = freezed,
    Object? globalSummaryLoading = freezed,
  }) {
    return _then(_HomeState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      currentCountry: currentCountry == freezed
          ? _value.currentCountry
          : currentCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      navStatus: navStatus == freezed
          ? _value.navStatus
          : navStatus // ignore: cast_nullable_to_non_nullable
              as NavigationStatus?,
      countrySummary: countrySummary == freezed
          ? _value.countrySummary
          : countrySummary // ignore: cast_nullable_to_non_nullable
              as List<CountrySummary>?,
      globalSummary: globalSummary == freezed
          ? _value.globalSummary
          : globalSummary // ignore: cast_nullable_to_non_nullable
              as GlobalSummary?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      timeCase: timeCase == freezed
          ? _value.timeCase
          : timeCase // ignore: cast_nullable_to_non_nullable
              as TimeCase?,
      locationLoading: locationLoading == freezed
          ? _value.locationLoading
          : locationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      countriesLoading: countriesLoading == freezed
          ? _value.countriesLoading
          : countriesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      summaryLoading: summaryLoading == freezed
          ? _value.summaryLoading
          : summaryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      globalSummaryLoading: globalSummaryLoading == freezed
          ? _value.globalSummaryLoading
          : globalSummaryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.name,
      this.photo,
      this.city,
      this.currentCountry,
      this.selectedCountry,
      this.navStatus,
      this.countrySummary,
      this.globalSummary,
      this.countries,
      this.timeCase,
      this.locationLoading = false,
      this.countriesLoading = false,
      this.summaryLoading = false,
      this.globalSummaryLoading = false});

  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String? city;
  @override
  final String? currentCountry;
  @override
  final String? selectedCountry;
  @override
  final NavigationStatus? navStatus;
  @override
  final List<CountrySummary>? countrySummary;
  @override
  final GlobalSummary? globalSummary;
  @override
  final List<Country>? countries;
  @override
  final TimeCase? timeCase;
  @JsonKey()
  @override
  final bool locationLoading;
  @JsonKey()
  @override
  final bool countriesLoading;
  @JsonKey()
  @override
  final bool summaryLoading;
  @JsonKey()
  @override
  final bool globalSummaryLoading;

  @override
  String toString() {
    return 'HomeState(name: $name, photo: $photo, city: $city, currentCountry: $currentCountry, selectedCountry: $selectedCountry, navStatus: $navStatus, countrySummary: $countrySummary, globalSummary: $globalSummary, countries: $countries, timeCase: $timeCase, locationLoading: $locationLoading, countriesLoading: $countriesLoading, summaryLoading: $summaryLoading, globalSummaryLoading: $globalSummaryLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.currentCountry, currentCountry) &&
            const DeepCollectionEquality()
                .equals(other.selectedCountry, selectedCountry) &&
            const DeepCollectionEquality().equals(other.navStatus, navStatus) &&
            const DeepCollectionEquality()
                .equals(other.countrySummary, countrySummary) &&
            const DeepCollectionEquality()
                .equals(other.globalSummary, globalSummary) &&
            const DeepCollectionEquality().equals(other.countries, countries) &&
            const DeepCollectionEquality().equals(other.timeCase, timeCase) &&
            const DeepCollectionEquality()
                .equals(other.locationLoading, locationLoading) &&
            const DeepCollectionEquality()
                .equals(other.countriesLoading, countriesLoading) &&
            const DeepCollectionEquality()
                .equals(other.summaryLoading, summaryLoading) &&
            const DeepCollectionEquality()
                .equals(other.globalSummaryLoading, globalSummaryLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(currentCountry),
      const DeepCollectionEquality().hash(selectedCountry),
      const DeepCollectionEquality().hash(navStatus),
      const DeepCollectionEquality().hash(countrySummary),
      const DeepCollectionEquality().hash(globalSummary),
      const DeepCollectionEquality().hash(countries),
      const DeepCollectionEquality().hash(timeCase),
      const DeepCollectionEquality().hash(locationLoading),
      const DeepCollectionEquality().hash(countriesLoading),
      const DeepCollectionEquality().hash(summaryLoading),
      const DeepCollectionEquality().hash(globalSummaryLoading));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {String? name,
      String? photo,
      String? city,
      String? currentCountry,
      String? selectedCountry,
      NavigationStatus? navStatus,
      List<CountrySummary>? countrySummary,
      GlobalSummary? globalSummary,
      List<Country>? countries,
      TimeCase? timeCase,
      bool locationLoading,
      bool countriesLoading,
      bool summaryLoading,
      bool globalSummaryLoading}) = _$_HomeState;

  @override
  String? get name;
  @override
  String? get photo;
  @override
  String? get city;
  @override
  String? get currentCountry;
  @override
  String? get selectedCountry;
  @override
  NavigationStatus? get navStatus;
  @override
  List<CountrySummary>? get countrySummary;
  @override
  GlobalSummary? get globalSummary;
  @override
  List<Country>? get countries;
  @override
  TimeCase? get timeCase;
  @override
  bool get locationLoading;
  @override
  bool get countriesLoading;
  @override
  bool get summaryLoading;
  @override
  bool get globalSummaryLoading;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
