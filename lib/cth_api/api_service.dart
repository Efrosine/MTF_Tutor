import 'package:dio/dio.dart';

import 'post_model.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
  }

  Future<List<Post>> getPosts() async {
    try {
      final response = await _dio.get('/posts');
      return (response.data as List)
          .map((post) => Post.fromJson(post))
          .toList();
    } catch (e) {
      print('Error fetching posts: $e');
      return [];
    }
  }

  Future<Post> createPost(Post postData) async {
    try {
      final response = await _dio.post('/posts', data: postData.toJson());
      return Post.fromJson(response.data);
    } catch (e) {
      print('Error creating post: $e');
      return Post(id: 0, userId: 0, title: '', body: '');
    }
  }
}
