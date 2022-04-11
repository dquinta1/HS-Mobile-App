// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeCase _$TimeCaseFromJson(Map<String, dynamic> json) {
  return _TimeCase.fromJson(json);
}

/// @nodoc
class _$TimeCaseTearOff {
  const _$TimeCaseTearOff();

  _TimeCase call({DateTime? date, int? cases, DateTime? time}) {
    return _TimeCase(
      date: date,
      cases: cases,
      time: time,
    );
  }

  TimeCase fromJson(Map<String, Object?> json) {
    return TimeCase.fromJson(json);
  }
}

/// @nodoc
const $TimeCase = _$TimeCaseTearOff();

/// @nodoc
mixin _$TimeCase {
  DateTime? get date => throw _privateConstructorUsedError;
  int? get cases => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeCaseCopyWith<TimeCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCaseCopyWith<$Res> {
  factory $TimeCaseCopyWith(TimeCase value, $Res Function(TimeCase) then) =
      _$TimeCaseCopyWithImpl<$Res>;
  $Res call({DateTime? date, int? cases, DateTime? time});
}

/// @nodoc
class _$TimeCaseCopyWithImpl<$Res> implements $TimeCaseCopyWith<$Res> {
  _$TimeCaseCopyWithImpl(this._value, this._then);

  final TimeCase _value;
  // ignore: unused_field
  final $Res Function(TimeCase) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? cases = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cases: cases == freezed
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as int?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TimeCaseCopyWith<$Res> implements $TimeCaseCopyWith<$Res> {
  factory _$TimeCaseCopyWith(_TimeCase value, $Res Function(_TimeCase) then) =
      __$TimeCaseCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? date, int? cases, DateTime? time});
}

/// @nodoc
class __$TimeCaseCopyWithImpl<$Res> extends _$TimeCaseCopyWithImpl<$Res>
    implements _$TimeCaseCopyWith<$Res> {
  __$TimeCaseCopyWithImpl(_TimeCase _value, $Res Function(_TimeCase) _then)
      : super(_value, (v) => _then(v as _TimeCase));

  @override
  _TimeCase get _value => super._value as _TimeCase;

  @override
  $Res call({
    Object? date = freezed,
    Object? cases = freezed,
    Object? time = freezed,
  }) {
    return _then(_TimeCase(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cases: cases == freezed
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as int?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeCase extends _TimeCase {
  _$_TimeCase({this.date, this.cases, this.time}) : super._();

  factory _$_TimeCase.fromJson(Map<String, dynamic> json) =>
      _$$_TimeCaseFromJson(json);

  @override
  final DateTime? date;
  @override
  final int? cases;
  @override
  final DateTime? time;

  @override
  String toString() {
    return 'TimeCase(date: $date, cases: $cases, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeCase &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.cases, cases) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(cases),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$TimeCaseCopyWith<_TimeCase> get copyWith =>
      __$TimeCaseCopyWithImpl<_TimeCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeCaseToJson(this);
  }
}

abstract class _TimeCase extends TimeCase {
  factory _TimeCase({DateTime? date, int? cases, DateTime? time}) = _$_TimeCase;
  _TimeCase._() : super._();

  factory _TimeCase.fromJson(Map<String, dynamic> json) = _$_TimeCase.fromJson;

  @override
  DateTime? get date;
  @override
  int? get cases;
  @override
  DateTime? get time;
  @override
  @JsonKey(ignore: true)
  _$TimeCaseCopyWith<_TimeCase> get copyWith =>
      throw _privateConstructorUsedError;
}
