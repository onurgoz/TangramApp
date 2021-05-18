import 'package:dndproject/model/shape_model.dart';
import 'package:flutter/material.dart';

class ShapeWidget extends StatefulWidget {
  final ShapeModel shapeModel;
  const ShapeWidget({
    Key key,
    @required this.shapeModel,
  }) : super(key: key);

  @override
  _ShapeWidgetState createState() => _ShapeWidgetState();
}

class _ShapeWidgetState extends State<ShapeWidget> {
  @override
  Widget build(BuildContext context) {
    return (widget.shapeModel.isPlaced)
        ? Container()
        : Positioned(
            top: widget.shapeModel.position.y,
            left: widget.shapeModel.position.x,
            child: Draggable(
              feedback: RotationTransition(
                turns: AlwaysStoppedAnimation(widget.shapeModel.rotationAngle),
                child: ClipPath(
                  child: Container(
                    color: widget.shapeModel.color,
                    width: widget.shapeModel.width,
                    height: widget.shapeModel.height,
                  ),
                  clipper: widget.shapeModel.shape,
                ),
              ),
              data: widget.shapeModel,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(widget.shapeModel.rotationAngle),
                child: ClipPath(
                  child: Container(
                    color: widget.shapeModel.color,
                    width: widget.shapeModel.width,
                    height: widget.shapeModel.height,
                  ),
                  clipper: widget.shapeModel.shape,
                ),
              ),
              childWhenDragging: Container(),
              onDragEnd: (DraggableDetails d) {
                setState(() {
                  widget.shapeModel.position
                      .setPosition(d.offset.dx, d.offset.dy);
                });
              },
            ),
          );
  }
}
