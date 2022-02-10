import 'package:freezed_annotation/freezed_annotation.dart';

part '../user_profile.freezed.dart';
part '../user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile() = _UserProfile;
	
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
			_$UserProfileFromJson(json);
}
