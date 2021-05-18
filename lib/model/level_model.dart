import 'package:dndproject/model/shape_model.dart';

class LevelModel {
  final List<ShapeModel> shapes;
  static int currentLevel = 0;
  int countOfLevel;
  LevelModel(this.shapes, this.countOfLevel);
}
