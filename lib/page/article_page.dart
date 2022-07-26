import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technewsconciergemobile2/dto/article.dart';
import 'package:technewsconciergemobile2/repository/article_repository.dart';

class ArticlePage extends ConsumerWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('記事の閲覧ページ'),
      ),
      body: _widgetContent(context, ref),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    final article = ArticleRepository().find('dummy id');

    return FutureBuilder(
      future: article,
      builder:
          (BuildContext buildContext, AsyncSnapshot<Article> asyncSnapshot) {
        if (asyncSnapshot.hasData) {
          return _articleContent(asyncSnapshot.data!);
        }
        return const Text('error');
      },
    );
  }

  Column _articleContent(Article article) {
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
        TextButton(onPressed: () => {}, child: const Text('記事を読む')),
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
