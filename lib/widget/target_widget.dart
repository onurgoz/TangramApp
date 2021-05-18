import 'package:dndproject/data/levels.dart';
import 'package:dndproject/model/level_model.dart';
import 'package:dndproject/model/shape_model.dart';
import 'package:dndproject/pages/low_level_page.dart';

import 'package:flutter/material.dart';

class TargetWidget extends StatefulWidget {
  final ShapeModel shapeModel;

  const TargetWidget({Key key, @required this.shapeModel}) : super(key: key);

  @override
  _TargetWidgetState createState() => _TargetWidgetState();
}

class _TargetWidgetState extends State<TargetWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.shapeModel.targetPosition.x,
      left: widget.shapeModel.targetPosition.y,
      child: DragTarget<ShapeModel>(
        builder: (context, candidateData, rejectedData) => RotationTransition(
          turns: AlwaysStoppedAnimation(widget.shapeModel.rotationAngle),
          child: ClipPath(
            child: Container(
              color: widget.shapeModel.targetColor,
              width: widget.shapeModel.width,
              height: widget.shapeModel.height,
            ),
            clipper: widget.shapeModel.shape,
          ),
        ),
        onWillAccept: (data) {
          print(data);
          return true;
        },
        onAccept: (data) {
          if (data.id == widget.shapeModel.id) {
            setState(() {
              print("obje yerleştirildi");

              data.isPlaced = true;
              data.targetColor = data.color;
              LowLevelPage.shapeCount++;
              if (LowLevelPage.levelOfCount == LowLevelPage.shapeCount) {
                LevelModel.currentLevel++;

                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LowLevelPage()),
                    ModalRoute.withName("/"));
              }
            });
          }
        },
      ),
    );
  }
}
