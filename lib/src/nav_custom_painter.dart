import 'package:flutter/material.dart';

class NavCustomPainter extends CustomPainter {
  late double loc;
  late double s;
  Color color;
  TextDirection textDirection;

  NavCustomPainter(
    double startingLoc,
    int itemsLength,
    this.color,
    this.textDirection,
  ) {
    final span = 1.0 / itemsLength;
    s = 0.2;
    double l = startingLoc + (span - s) / 2;
    loc = textDirection == TextDirection.rtl ? 0.8 - l : l;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    print(loc);
    print(s);
    final path_0 = Path();

    path_0.moveTo(size.width * 0.003454722, 0);
    path_0.lineTo(size.width * (loc - 0.1), 0);
    path_0.cubicTo(
      size.width * (loc - s * 0.1),
      0,
      size.width * loc,
      size.height * 0.1251021,
      size.width * (loc + s * 0.0129083),
      size.height * 0.2798485,
    );
    path_0.lineTo(
      size.width * (loc + 0.003),
      size.height * 0.4790619,
    );
    path_0.cubicTo(
      size.width * (loc - s * 0.0129083),
      size.height * 0.6824258,
      size.width * (loc + s * 0.2429250),
      size.height * 0.8472515,
      size.width * (loc + s * 0.4923000),
      size.height * 0.8472515,
    );
    path_0.lineTo(
      size.width * (loc + 0.1134583),
      size.height * 0.8472515,
    );
    path_0.cubicTo(
      size.width * (loc + s * 0.8628333),
      size.height * 0.8472515,
      size.width * (loc + s * 1.0028500),
      size.height * 0.6824258,
      size.width * (loc + s * 1.0028500),
      size.height * 0.4790619,
    );
    path_0.lineTo(
      size.width * (loc + 0.2028500),
      size.height * 0.3011928,
    );
    path_0.cubicTo(
      size.width * (loc + s * 1.0028500),
      size.height * 0.1345876,
      size.width * (loc + s * 1.1555250),
      0,
      size.width * (loc + s * 1.4759750),
      0,
    );
    path_0.lineTo(
      size.width * (loc + 0.9965444),
      0,
    );
    path_0.cubicTo(
      size.width,
      0,
      size.width,
      size.height * 0.006521845,
      size.width,
      size.height * 0.01422948,
    );
    path_0.lineTo(
      size.width,
      size.height * 0.9948454,
    );
    path_0.cubicTo(
      size.width,
      size.height * 1.002553,
      size.width,
      size.height * 0.7864588,
      size.width,
      size.height,
    );
    path_0.lineTo(
      size.width * 0.007972111,
      size.height,
    );
    path_0.lineTo(
      size.width * -0.01388889,
      size.height,
    );
    path_0.lineTo(
      0,
      size.height * 0.01422948,
    );
    path_0.cubicTo(
      size.width * 0.0001439469,
      size.height * 0.006521845,
      size.width * 0.001583417,
      0,
      size.width * 0.003454722,
      0,
    );
    path_0.close();
    canvas.drawPath(path_0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
