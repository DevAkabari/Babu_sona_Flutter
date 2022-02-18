import 'package:flutter/cupertino.dart';

class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.5031447);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.4968553);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.5031447);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffA7D3F0).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.4458599);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.5541401);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.4458599);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffA23143).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
