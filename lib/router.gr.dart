// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i6;
import 'package:technewsconciergemobile2/articlePage.dart' as _i3;
import 'package:technewsconciergemobile2/favoritePage.dart' as _i4;
import 'package:technewsconciergemobile2/mainPage.dart' as _i1;
import 'package:technewsconciergemobile2/menuPage.dart' as _i5;

class MainRouter extends _i2.RootStackRouter {
  MainRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    ArticleRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    FavoriteRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    MenuRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ArticleTopRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.ArticlePage());
    },
    FavoriteTopRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.FavoritePage());
    },
    MenuTopRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.MenuPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: 'main', fullMatch: true),
        _i2.RouteConfig(MainRoute.name, path: 'main', children: [
          _i2.RouteConfig(ArticleRoute.name,
              path: 'article',
              parent: MainRoute.name,
              children: [
                _i2.RouteConfig(ArticleTopRoute.name,
                    path: '', parent: ArticleRoute.name)
              ]),
          _i2.RouteConfig(FavoriteRoute.name,
              path: 'favorite',
              parent: MainRoute.name,
              children: [
                _i2.RouteConfig(FavoriteTopRoute.name,
                    path: '', parent: FavoriteRoute.name)
              ]),
          _i2.RouteConfig(MenuRoute.name,
              path: 'menu',
              parent: MainRoute.name,
              children: [
                _i2.RouteConfig(MenuTopRoute.name,
                    path: '', parent: MenuRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i2.PageRouteInfo<void> {
  const MainRoute({List<_i2.PageRouteInfo>? children})
      : super(MainRoute.name, path: 'main', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ArticleRoute extends _i2.PageRouteInfo<void> {
  const ArticleRoute({List<_i2.PageRouteInfo>? children})
      : super(ArticleRoute.name, path: 'article', initialChildren: children);

  static const String name = 'ArticleRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class FavoriteRoute extends _i2.PageRouteInfo<void> {
  const FavoriteRoute({List<_i2.PageRouteInfo>? children})
      : super(FavoriteRoute.name, path: 'favorite', initialChildren: children);

  static const String name = 'FavoriteRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MenuRoute extends _i2.PageRouteInfo<void> {
  const MenuRoute({List<_i2.PageRouteInfo>? children})
      : super(MenuRoute.name, path: 'menu', initialChildren: children);

  static const String name = 'MenuRoute';
}

/// generated route for
/// [_i3.ArticlePage]
class ArticleTopRoute extends _i2.PageRouteInfo<void> {
  const ArticleTopRoute() : super(ArticleTopRoute.name, path: '');

  static const String name = 'ArticleTopRoute';
}

/// generated route for
/// [_i4.FavoritePage]
class FavoriteTopRoute extends _i2.PageRouteInfo<void> {
  const FavoriteTopRoute() : super(FavoriteTopRoute.name, path: '');

  static const String name = 'FavoriteTopRoute';
}

/// generated route for
/// [_i5.MenuPage]
class MenuTopRoute extends _i2.PageRouteInfo<void> {
  const MenuTopRoute() : super(MenuTopRoute.name, path: '');

  static const String name = 'MenuTopRoute';
}
