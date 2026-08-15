import 'package:flutter/material.dart';

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = const Color(0xFFFF6600);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

    Paint whitePaint = Paint()..color = Colors.white;
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, 40);
    path.quadraticBezierTo(0, 0, 40, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 40);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, whitePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
