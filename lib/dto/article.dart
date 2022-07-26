import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    @Default('--') String id,
    @Default('--') String publishDate,
    @Default('--') String title,
    @Default('--') String description,
    @Default('--') String link,
  }) = _Article;

  factory Article.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ArticleFromJson(json);
}
