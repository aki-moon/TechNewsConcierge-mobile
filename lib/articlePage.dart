// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technewsconciergemobile2/article.dart';

class ArticlePage extends ConsumerWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("記事の閲覧ページ"),
      ),
      body: _widgetContent(context, ref),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    Article article = Article(
        '2022/7/16(土) 11:00',
        'ワンキャリアのCTOが登壇するオンラインセミナー「CTOが特別解説！『サービススケールで直面した組織課題とマイクロサービスアーキテクチャ戦略』」が7月21日に開催',
        '翔泳社とCodeZineが主催する開発者向けイベント「Developers Summit 2022&amp;nbsp;Summer（デブサミ2022夏）」が7月21日にオンラインで開催されます。今年は「アジャイル・DevOps時代のプロダクトとエンジニア組織を支える、Developer Productivityへの道」をテーマとした34セッションを提供します。今回は「開発プロセス」のカテゴリからいくつかのセッションをご紹介します。',
        'http://codezine.jp/article/detail/16206');
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(article.publishDate),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            article.title,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            article.description,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextButton(onPressed: () => {}, child: const Text("記事を読む")),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () => {},
            ),
          ),
        )
      ],
    );
  }
}
