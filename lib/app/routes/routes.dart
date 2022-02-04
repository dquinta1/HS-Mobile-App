import 'package:flutter/widgets.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/auth/auth.dart';
import 'package:hs_mobile_app/router/router.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [RouteController.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}