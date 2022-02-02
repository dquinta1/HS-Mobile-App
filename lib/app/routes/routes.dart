import 'package:flutter/widgets.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/auth/auth.dart';
import 'package:hs_mobile_app/home/home.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}