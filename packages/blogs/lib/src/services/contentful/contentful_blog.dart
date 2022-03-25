import 'dart:convert';
import 'dart:developer' as developer;

import 'package:blogs_repository/blogs_repository.dart';
import 'package:http/http.dart' as http;

class ContentfulBlog implements IBlogRepository {
  @override
  Future<List<Blog>> getBlogs({int? fromBlog}) async {
    try {
      final res = await http.post(
          Uri.parse(
              'https://graphql.contentful.com/content/v1/spaces/toq4428iudhc/'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Bearer SJzuxAWAyxFy-15hC9-LzXgtN3ZqUd8rYlgdhcfCIug',
          },
          body: jsonEncode({
            'query': '''
              query {
                pageCollection {
                  items {
                    sys {
                      id
                      publishedAt
                    }
                    title
                    information
                    image {url}
                }
              }
            }'''
          }));

      if (res.statusCode >= 400) {
        developer.log('Response received with status code: ${res.statusCode}');
        developer.log('The Response:\n' + res.body);
        throw BlogFailure('Error: HTTP Status Code: ${res.statusCode}');
      } else {
        final data = jsonDecode(res.body)['data']['pageCollection']['items'];
        return List.generate(
            data.length, (index) => Blog.fromContentfulData(data[index]));
      }
    } catch (e) {
      developer.log(e.toString());
      throw BlogFailure();
    }
  }

  @override
  Future<Blog> getBlogById({required String id}) async {
    try {
      final res = await http.post(
          Uri.parse(
              'https://graphql.contentful.com/content/v1/spaces/toq4428iudhc/'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Bearer SJzuxAWAyxFy-15hC9-LzXgtN3ZqUd8rYlgdhcfCIug',
          },
          body: jsonEncode({
            'query': '''
              query(\$id : String!) {
                pageCollection(where: {
                  sys: {
                    id_in: [\$id]
                  }
                }) {
                  items {
                    sys {
                      id
                      publishedAt
                    }
                    title
                    information
                    image {url}
                  }
                }
              }''',
            'variables': {'id': id},
          }));

      if (res.statusCode >= 400) {
        developer.log('Response received with status code: ${res.statusCode}');
        developer.log('The Response:\n' + res.body);
        throw BlogFailure('Error: HTTP Status Code: ${res.statusCode}');
      } else {
        final data = jsonDecode(res.body)['data']['pageCollection']['items'][0];
        return Blog.fromContentfulData(data);
      }
    } on BlogFailure catch (e) {
      throw e;
    } catch (e) {
      developer.log(e.toString());
      throw BlogFailure();
    }
  }
}
