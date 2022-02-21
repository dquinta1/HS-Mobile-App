import 'package:blogs_repository/blogs_repository.dart';

/// {@template i_blogs_repository}
/// Blogs Service Interface which manages user blogs.
/// {@endtemplate}
abstract class IBlogService {
  /// List of [Blog] returned by calling the blog service using pagination.
  /// Returns [X] many [Blog] after [fromBlog] in descending [DateTime] order.
  /// 
  /// Throws [Exception] if an exception occurs.
  List<Blog> getBlogs({int fromBlog});

  /// Returns a [Blog] with matching [id]
  /// 
  /// Throws [Exception] if an exception occurs.
  Blog getBlogById({required String id});
}
