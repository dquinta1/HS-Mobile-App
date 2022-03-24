import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog.freezed.dart';
part 'blog.g.dart';

@freezed
class Blog with _$Blog {
  const Blog._();
  factory Blog({
    required String id,
    required String title,
    required DateTime date,
    String? author,
    String? body,
    String? photo,
  }) = _Blog;

  /// Format raw data from the Contentful API into a Blog object
  static Blog fromContentfulData(Map<String, dynamic> data) => Blog(
        id: data['sys']['id'],
        title: data['title'],
        date: DateTime.parse(data['sys']['publishedAt']), 
        // author: data['author'], //! this field does not exist in API atm
        body: data['information'],
        photo: data['image']['url'],
      );

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);
}
