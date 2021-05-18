import 'package:dndproject/data/levels.dart';
import 'package:dndproject/model/shape_model.dart';
import 'package:dndproject/widget/shape_widget.dart';
import 'package:dndproject/widget/target_widget.dart';
import 'package:flutter/material.dart';

class MediumLevelPage extends StatefulWidget {
  static const routeName = '/medium_level_page';

  final List<ShapeModel> level = Levels().levels[8].shapes;
  @override
  _MediumLevelPageState createState() => _MediumLevelPageState();
}

class _MediumLevelPageState extends State<MediumLevelPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(children: [
          // ...widget.level.map((e) => TargetWidget(shapeModel: e)),
          // ...widget.level.map((e) => ShapeWidget(shapeModel: e)),
        ]),
      ),
    );
  }
}
