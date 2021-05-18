import 'package:dndproject/pages/hard_level_page.dart';
import 'package:dndproject/pages/home_page.dart';
import 'package:dndproject/pages/low_level_page.dart';
import 'package:dndproject/pages/medium_level_page.dart';

import 'package:flutter/material.dart';

import 'pages/help_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        HelpPage.routeName: (_) => HelpPage(),
        LowLevelPage.routeName: (_) => LowLevelPage(),
        MediumLevelPage.routeName: (_) => MediumLevelPage(),
        HardLevelPage.routeName: (_) => HardLevelPage(),
      },
    );
  }
}
