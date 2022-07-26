// ignore_for_file: file_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:technewsconciergemobile2/page/articlePage.dart';
import 'package:technewsconciergemobile2/page/favoritePage.dart';
import 'package:technewsconciergemobile2/page/mainPage.dart';
import 'package:technewsconciergemobile2/page/menuPage.dart';

class MainRouteObserver extends AutoRouterObserver {
  @override
  // ignore: no-empty-block
  void didPush(Route route, Route? previousRoute) {}
}

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: 'main',
      name: 'MainRoute',
      page: MainPage,
      initial: true,
      children: [
        AutoRoute(
          path: 'article',
          name: 'ArticleRoute',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              name: 'ArticleTopRoute',
              page: ArticlePage,
            ),
          ],
        ),
        AutoRoute(
          path: 'favorite',
          name: 'FavoriteRoute',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              name: 'FavoriteTopRoute',
              page: FavoritePage,
            ),
          ],
        ),
        AutoRoute(
          path: 'menu',
          name: 'MenuRoute',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              name: 'MenuTopRoute',
              page: MenuPage,
            ),
          ],
        )
      ],
    ),
  ],
)
class $MainRouter {}
