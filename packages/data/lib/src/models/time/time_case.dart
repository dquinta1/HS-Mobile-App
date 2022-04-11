import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_case.freezed.dart';
part 'time_case.g.dart';

@freezed
class TimeCase with _$TimeCase {
  const TimeCase._();

  factory TimeCase({
    DateTime? date,
    int? cases,
    DateTime? time,
  }) = _TimeCase;

  factory TimeCase.fromJson(Map<String, dynamic> json) =>
      _$TimeCaseFromJson(json);
}
