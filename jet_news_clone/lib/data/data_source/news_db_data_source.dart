import 'package:jet_news_clone/domain/model/post.dart';
import 'package:sqflite/sqflite.dart';

class NewsDBDataSource {
  Database db;

  NewsDBDataSource(this.db);

  Future<Set<String>> getFavoritePostsSet() async {
    List<Map<String, dynamic>> maps = await db.query('favoritePost');
    return maps.map((e) => e['postId'] as String).toSet();
  }

  Future<void> add(Post post) async {
    await db.insert('favoritePost', {'postId': post.id});
  }

  Future<void> remove(Post post) async {
    await db.delete(
      'favoritePost',
      where: 'postId = ?',
      whereArgs: [post.id],
    );
  }
}
