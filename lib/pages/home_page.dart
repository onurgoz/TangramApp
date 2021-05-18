import 'package:dndproject/widget/menu_item_widget.dart';
import 'package:flutter/material.dart';

import 'hard_level_page.dart';
import 'help_page.dart';
import 'low_level_page.dart';
import 'medium_level_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuItemWidget(
                color: Colors.grey[700],
                name: "Help",
                routeName: HelpPage.routeName,
              ),
              MenuItemWidget(
                color: Colors.green[700],
                name: "Low",
                routeName: LowLevelPage.routeName,
              ),
              MenuItemWidget(
                color: Colors.yellow[700],
                name: "Medium",
                routeName: MediumLevelPage.routeName,
              ),
              MenuItemWidget(
                color: Colors.red[700],
                name: "Hard",
                routeName: HardLevelPage.routeName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
