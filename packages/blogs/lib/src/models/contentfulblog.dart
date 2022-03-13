
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contentfulblog.freezed.dart';
part 'contentfulblog.g.dart';

@freezed
class ContentfulBlog with _$ContentfulBlog {
  factory ContentfulBlog({
    required String title,
    required DateTime date,
    String? information,
    dynamic image,
  }) = _ContentfulBlog;
	
  factory ContentfulBlog.fromJson(Map<String, dynamic> json) =>
			_$ContentfulBlogFromJson(json);
}
