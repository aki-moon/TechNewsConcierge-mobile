// ignore_for_file: file_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technewsconciergemobile2/buttom_navigationbar.dart';
import 'package:technewsconciergemobile2/router.gr.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      drawer: Drawer(
        child: Column(
          children: const [
            Text('test1'),
            Text('test2'),
            Text('test3'),
          ],
        ),
      ),
      routes: const [
        ArticleRoute(),
        FavoriteRoute(),
        MenuRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return ButtomNavigationBar(
          tabsRouter: tabsRouter,
        );
      },
    );
  }
}
