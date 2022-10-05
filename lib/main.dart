import 'package:avaliacaoflutter/widgets/house_cache.dart';
import 'package:flutter/material.dart';
import 'package:avaliacaoflutter/routes.dart';
import 'package:provider/provider.dart';
import 'routes/home_page.dart';
import 'routes/profile_page.dart';
import 'routes/login_page.dart';
import 'routes/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<HouseCache>(
      create: (_) => HouseCache(),
      child: MaterialApp(
        onGenerateTitle: (context) => "App",
        initialRoute: RouterGenerator.homePage,
        onGenerateRoute: RouterGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
