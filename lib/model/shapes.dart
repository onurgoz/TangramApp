import 'package:flutter/material.dart';

class Triangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Square extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Paralelogram extends CustomClipper<Path> {
  final bool flip;
  Paralelogram({this.flip = false});
  @override
  Path getClip(Size size) {
    return (flip)
        ? (Path()
          ..moveTo(0, 0)
          ..lineTo(size.width - size.height, 0)
          ..lineTo(size.width, size.height)
          ..lineTo(size.height, size.height)
          ..close())
        : (Path()
          ..moveTo(size.height, 0)
          ..lineTo(size.width, 0)
          ..lineTo(size.width - size.height, size.height)
          ..lineTo(0, size.height)
          ..close());
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
