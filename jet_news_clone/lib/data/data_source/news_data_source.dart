import 'package:http/http.dart' as http;
import 'package:jet_news_clone/core/result.dart';
import 'dart:convert';

import 'package:jet_news_clone/domain/model/post.dart';
import 'package:jet_news_clone/domain/model/posts_feed.dart';

class NewsDataSource {
  static String baseUrl =
      'https://raw.githubusercontent.com/junsuk5/mock_json/main/jetnews/posts.json';

  final http.Client _client;

  NewsDataSource({http.Client? client}) : _client = client ?? http.Client();

  //Get a specific JetNews post.
  Future<Result<Post>> getPost(String? postId) async {
    throw UnimplementedError();
  }

  //Get JetNews posts.
  Future<Result<PostsFeed>> getPostsFeed() async {
    try {
      final response = await _client.get(Uri.parse(baseUrl));
      Iterable jsonResponse = jsonDecode(response.body);
      List<Post> totalPosts =
          jsonResponse.map((e) => Post.fromJson(e)).toList();

      PostsFeed feed = PostsFeed(
        highlightedPost: totalPosts[3],
        recommendedPosts: [totalPosts[0], totalPosts[1], totalPosts[2]],
        popularPosts: [totalPosts[4], totalPosts[5], totalPosts[6]],
        recentPosts: [totalPosts[7], totalPosts[8], totalPosts[9]],
      );

      return Result.success(feed);
    } on Exception catch (e) {
      return Result.error(e.toString());
    }
  }

  //Toggle a postId to be a favorite or not.
  void toggleFavorite(String postId) {}
}
