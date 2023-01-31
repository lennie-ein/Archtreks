import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvedBottom extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    Path path = Path();
    path.cubicTo(size.height / 4, 3 * size.width / 4, 3 * size.height / 4, size.width / 4, size.height, size.width);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}