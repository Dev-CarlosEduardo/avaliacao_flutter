import 'package:avaliacaoflutter/widgets/house_cache.dart';
import 'package:flutter/material.dart';
import 'package:avaliacaoflutter/routes.dart';
import 'package:provider/provider.dart';
import 'routes/home_page.dart';
import 'routes/profile_page.dart';
import 'routes/login_page.dart';

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
        initialRoute: RouterGenerator.itemPage,
        onGenerateRoute: RouterGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// void main() => runApp(MultiProvider(
//       providers: [ChangeNotifierProvider(create: (context) => AppData())],
//       child: MyApp(),
//     ));

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: {
//         '/home': (context) => HomePage(),
//         '/login': (context) => LoginPage(),
//         '/profile': (context) => ProfilePage(),
//       },
//       initialRoute: '/home',
//     );
//   }
// }
