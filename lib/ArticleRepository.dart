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
    print(stringData);

    // TODO 上のstringDataをPurseしてArticleを生成する
    return Article(
        'ID',
        '2022/7/16(土) 11:00',
        'ワンキャリアのCTOが登壇するオンラインセミナー「CTOが特別解説！『サービススケールで直面した組織課題とマイクロサービスアーキテクチャ戦略』」が7月21日に開催',
        '翔泳社とCodeZineが主催する開発者向けイベント「Developers Summit 2022&amp;nbsp;Summer（デブサミ2022夏）」が7月21日にオンラインで開催されます。今年は「アジャイル・DevOps時代のプロダクトとエンジニア組織を支える、Developer Productivityへの道」をテーマとした34セッションを提供します。今回は「開発プロセス」のカテゴリからいくつかのセッションをご紹介します。',
        'http://codezine.jp/article/detail/16206');
  }
}
