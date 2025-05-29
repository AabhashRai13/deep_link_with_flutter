import 'package:deep_link_with_flutter/deeplink/config.dart';
import 'package:deep_link_with_flutter/navigation/app_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DeepLinkingConfig deepLink = DeepLinkingConfig();
  @override
  void didChangeDependencies() {
    deepLink.getLinkStream();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppNavigation.router,
    );
  }
}
