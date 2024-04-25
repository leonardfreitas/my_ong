import 'package:flutter/material.dart';
import 'package:my_ong/pages/contact.dart';

import 'package:my_ong/pages/home.dart';
import 'package:my_ong/pages/ong.dart';
import 'package:my_ong/pages/test.dart';
import 'package:my_ong/utils/app_routes.dart';
import 'package:my_ong/widgets/app_navigator.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.index,
      routes: {
        AppRoutes.index: (ctx) => const AppNavigator(),
        AppRoutes.ong: (ctx) => const OngPage(),
      },
    );
  }
}
