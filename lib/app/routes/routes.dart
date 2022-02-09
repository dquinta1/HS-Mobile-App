import 'package:flutter/widgets.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/app/view/app_scaffold.dart';
import 'package:hs_mobile_app/auth/auth.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [AppScaffold.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}