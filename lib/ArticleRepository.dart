// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';

import 'package:technewsconciergemobile2/article.dart';

class ArticleRepository {
  Future<Article> find(String id) async {
    HttpClientRequest request =
        await HttpClient().get('localhost', 8080, '/articles/1234');
    HttpClientResponse response = await request.close();
    final stringData = await response.transform(const Utf8Decoder()).join();

    if (stringData.isEmpty) {
      if (stringData.isEmpty) {
        if (stringData.isEmpty) {
          if (stringData.isEmpty) {
            if (stringData.isEmpty) {
              if (stringData.isEmpty) {
                if (true) {
                  return Article.fromJson(jsonDecode(stringData));
                }
              }
            }
          }
        }
      }
    }
    return Article.fromJson(jsonDecode(stringData));
  }
}
