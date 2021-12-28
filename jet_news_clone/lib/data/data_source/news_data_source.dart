import 'package:http/http.dart' as http;
import 'package:jet_news_clone/core/result.dart';
import 'dart:convert';

import 'package:jet_news_clone/domain/model/post.dart';

class NewsDataSource {
  static String baseUrl =
      'https://raw.githubusercontent.com/junsuk5/mock_json/main/jetnews/posts.json';

  final http.Client _client;

  NewsDataSource({http.Client? client}) : _client = client ?? http.Client();

  //Get a specific JetNews post.
  Future<Result<List<Post>>> getPost(String? postId) async {
    try {
      final response = await _client.get(Uri.parse(baseUrl));
      Iterable jsonResponse = jsonDecode(response.body);
      return Result.success(jsonResponse.map((e) => Post.fromJson(e)).toList());
    } on Exception catch (e) {
      return Result.error(e.toString());
    }
  }
}
