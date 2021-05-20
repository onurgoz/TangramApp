class PositionModel {
  PositionModel(this._x, this._y);

  setPosition(double x, double y) {
    this._x = x;
    this._y = y - 80;
  }

  double get x {
    return this._x;
  }

  double get y {
    return this._y;
  }

  double _x;
  double _y;
}
