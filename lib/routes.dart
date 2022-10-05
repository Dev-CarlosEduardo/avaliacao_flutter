import 'package:avaliacaoflutter/routes/detail_page.dart';
import 'package:avaliacaoflutter/routes/home_page.dart';
import 'package:avaliacaoflutter/routes/item_page.dart';
import 'package:avaliacaoflutter/routes/login_page.dart';
import 'package:avaliacaoflutter/routes/profile_page.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static const String initialPage = '/';
  static const String homePage = '/home';
  static const String loginPage = '/login';
  static const String profilePage = '/profile';
  static const String infoPage = '/info';
  static const String itemPage = '/item';
  static const String welcomePage = '/welcome';
  static const String detailPage = '/detail';

  RouterGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialPage:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case profilePage:
        return MaterialPageRoute(
          builder: (_) => ProfilePage(),
        );
      case itemPage:
        return MaterialPageRoute(
          builder: (_) => ItemPage(),
        );
      case detailPage:
        return MaterialPageRoute(
          builder: (_) => const DetailPage(),
        );

      default:
        throw const FormatException(
          "Rota não encontrada",
        );
    }
  }
}
