import 'dart:math';

import 'package:flutter/material.dart';

class GameCharacter extends StatelessWidget {
  final direction;
  final isRun;

  GameCharacter({this.direction, this.isRun});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: 50,
        height: 50,
        child: isRun
            ? Image.asset("assets/images/lingkaran.png")
            : Image.asset("assets/images/lingkaran.png"),
      );
    } else {
      return Transform(
        transform: Matrix4.rotationY(pi),
        alignment: Alignment.center,
        child: Container(
          width: 50,
          height: 50,
          child: isRun
              ? Image.asset("assets/images/lingkaran.png")
              : Image.asset("assets/images/lingkaran.png"),
        ),
      );
    }
  }
}
