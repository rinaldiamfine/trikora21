import 'dart:math';

import 'package:flutter/material.dart';

class GameCharacterJump extends StatelessWidget {
  final direction;

  GameCharacterJump({this.direction});

  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        width: 50,
        height: 50,
        child: Image.asset("assets/images/lingkaran.png"),
      );
    } else {
      return Transform(
        transform: Matrix4.rotationY(pi),
        alignment: Alignment.center,
        child: Container(
          width: 50,
          height: 50,
          child: Image.asset("assets/images/lingkaran.png"),
        ),
      );
    }
  }
}
