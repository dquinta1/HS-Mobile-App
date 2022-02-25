import 'package:blogs_repository/blogs_repository.dart';

class MockBlog implements IBlogRepository {
  @override
  Future<List<Blog>> getBlogs({int? fromBlog}) {
    return Future.delayed(Duration(milliseconds: 400), () {
      return List<Blog>.generate(10, (index) {
        return Blog(
          id: index.toString(),
          title: 'Blog Title: (Blog #$index)',
          author: 'Author Name',
          date: DateTime.now(),
          photo: 'https://picsum.photos/800',
        );
      });
    });
  }

  @override
  Future<Blog> getBlogById({required String id}) {
    return Future.delayed(Duration(milliseconds: 400), () {
      return Blog(
        id: id,
        title: 'Blog Title: (ID: $id)',
        author: 'Author Name',
        date: DateTime.now(),
        photo: 'https://picsum.photos/800',
        body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,' +
            'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' +
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris' +
            'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in' +
            'reprehenderit in voluptate velit esse cillum dolore eu fugiat ' +
            'pariatur. Excepteur sint occaecat cupidatat non proident, sunt in' +
            'culpa qui officia deserunt mollit anim id est laborum.',
      );
    });
  }
}
