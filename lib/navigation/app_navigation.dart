import 'package:deep_link_with_flutter/home_page.dart';
import 'package:deep_link_with_flutter/navigation/pathnames.dart';
import 'package:deep_link_with_flutter/product_page.dart';
import 'package:deep_link_with_flutter/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(
          path: '/${PathNames.product}/:id',
          name: PathNames.product,
          builder: (context, state) =>
              ProductPage(productId: state.pathParameters['id']!)),
      GoRoute(
          path: '/${PathNames.profile}',
          name: PathNames.profile,
          builder: (context, state) => const ProfilePage()),
    ],
  );
}
