import 'dart:convert';

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

      if (res.statusCode != 200) {
        //TODO: implement proper failures to account for these errors
        print(res.body);
        throw Exception('Error: Response with status code: ${res.statusCode}');
      } else {
        final data = jsonDecode(res.body)['data']['pageCollection']['items'];
        return List.generate(
            data.length, (index) => Blog.fromContentfulData(data[index]));
      }
    } catch (e) {
      //TODO: implement proper failures to account for these errors
      throw Exception(e.toString());
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

      if (res.statusCode != 200) {
        print('Response received with status code: ${res.statusCode}');
        print(res.body);
        //TODO: implement proper failures to account for these errors
        throw Exception('Error: Response with status code: ${res.statusCode}');
      } else {
        final data = jsonDecode(res.body)['data']['pageCollection']['items'][0];
        print(data);
        return Blog.fromContentfulData(data);
      }
    } catch (e) {
      //TODO: implement proper failures to account for these errors
      throw Exception(e.toString());
    }
  }
}
