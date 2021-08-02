import 'package:flutter/material.dart';

class DesignCircle extends StatelessWidget {

  final double x;
  final double y;
  final double scale;

  const DesignCircle({
    Key? key, required this.x, required this.y, required this.scale
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      transformHitTests: true,
      offset: Offset(x, y),
      child: Transform.scale(
        scale: scale,
        child: Container(
          width: MediaQuery.of(context).size.width * 2,
          height: MediaQuery.of(context).size.height * 2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green[700],
          ),
        ),
      ),
    );
  }
}