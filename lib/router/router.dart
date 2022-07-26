import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:technewsconciergemobile2/page/article_page.dart';
import 'package:technewsconciergemobile2/page/favorite_page.dart';
import 'package:technewsconciergemobile2/page/main_page.dart';
import 'package:technewsconciergemobile2/page/menu_page.dart';

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
