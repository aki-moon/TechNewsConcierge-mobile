// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as String? ?? '--',
      publishDate: json['publishDate'] as String? ?? '--',
      title: json['title'] as String? ?? '--',
      description: json['description'] as String? ?? '--',
      link: json['link'] as String? ?? '--',
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'publishDate': instance.publishDate,
      'title': instance.title,
      'description': instance.description,
      'link': instance.link,
    };
