import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog.freezed.dart';
part 'blog.g.dart';

@freezed
class Blog with _$Blog {
  factory Blog({
    required String id,
    required String title,
    required DateTime date,
    String? author,
    String? body,
    String? photo,
  }) = _Blog;

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);
}
