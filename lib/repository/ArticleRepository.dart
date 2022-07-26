// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';

import 'package:technewsconciergemobile2/article.dart';

class ArticleRepository {
  Future<Article> find(String id) async {
    final request = await HttpClient().get('localhost', 8080, '/articles/1234');
    final response = await request.close();
    final stringData = await response.transform(const Utf8Decoder()).join();

    return Article.fromJson(jsonDecode(stringData));
  }
}
