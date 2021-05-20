import 'package:dndproject/model/level_model.dart';
import 'package:dndproject/pages/developers.dart';
import 'package:dndproject/pages/level_home_page.dart';
import 'package:dndproject/widget/menu_item_widget.dart';
import 'package:flutter/material.dart';

import 'help_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home_page';

  HomePage() {
    LevelModel.currentLevel = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuItemWidget(
                color: Colors.green[700],
                name: "Start",
                routeName: LevelHomePage.routeName,
              ),
              MenuItemWidget(
                color: Colors.grey[700],
                name: "Help",
                routeName: HelpPage.routeName,
              ),
              MenuItemWidget(
                color: Colors.grey[700],
                name: "Developer",
                routeName: DeveloperPage.routeName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
