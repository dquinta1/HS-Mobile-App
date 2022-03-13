import 'package:blogs_repository/blogs_repository.dart';
import 'package:http/http.dart' as http;

class ContentfulBlog implements IBlogRepository {
  @override
  Future<List<Blog>> getBlogs({int? fromBlog}) async {
    var client = http.Client();
    try {
      final response = await client.post(
          Uri.https(
              'graphql.contentful.com', '/content/v1/spaces/toq4428iudhc/'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Bearer SJzuxAWAyxFy-15hC9-LzXgtN3ZqUd8rYlgdhcfCIug',
          },
          body: {
            
          });
    } finally {
      client.close();
    }

    // TODO: implement getBlogs
    throw UnimplementedError();
  }

  @override
  Future<Blog> getBlogById({required String id}) {
    // TODO: implement getBlogById
    throw UnimplementedError();
  }
}
