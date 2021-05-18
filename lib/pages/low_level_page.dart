import 'package:dndproject/data/levels.dart';
import 'package:dndproject/model/level_model.dart';
import 'package:dndproject/model/shape_model.dart';
import 'package:dndproject/widget/shape_widget.dart';
import 'package:dndproject/widget/target_widget.dart';
import 'package:flutter/material.dart';

class LowLevelPage extends StatefulWidget {
  static const routeName = '/low_level_page';
  static int shapeCount = 0;
  final List<ShapeModel> level =
      Levels().levels[LevelModel.currentLevel].shapes;
  static int levelOfCount =
      Levels().levels[LevelModel.currentLevel].countOfLevel;
  @override
  _LowLevelPageState createState() => _LowLevelPageState();
}

class _LowLevelPageState extends State<LowLevelPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(children: [
          ...widget.level.map((e) => TargetWidget(shapeModel: e)),
          ...widget.level.map((e) => ShapeWidget(shapeModel: e)),
        ]),
      ),
    );
  }
}
