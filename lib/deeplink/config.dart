import 'dart:async';
import 'dart:developer';
import 'package:deep_link_with_flutter/navigation/app_navigation.dart';
import 'package:uni_links/uni_links.dart';

class DeepLinkingConfig {
  Uri? initialUri;
  String? initialLink;
  Uri? currentUri;
  StreamSubscription? sub;

  void getInitialLink() async {
    try {
      initialUri = await getInitialUri();
      log('initialUri: ${initialUri.toString()}');
      if (initialUri != null && initialUri!.pathSegments.isNotEmpty) {
        AppNavigation.router.go(initialUri!.path);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void getLinkStream() {
    sub = uriLinkStream.listen((Uri? uri) {
      log('uri: ${uri.toString()}');
      if (uri != null && uri.pathSegments.isNotEmpty) {
        currentUri = uri;
        AppNavigation.router.go(uri.path);
      }
    }, onError: (err) {});
  }
}
