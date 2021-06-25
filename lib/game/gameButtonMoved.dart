import 'package:flutter/material.dart';

class GameButtonMoved extends StatelessWidget {
  final btn;
  final action;
  static bool hold = false;

  GameButtonMoved({this.btn, this.action});
  bool userIsHoldingButton() {
    return hold;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        hold = true;
        action();
      },
      onTapUp: (details) {
        hold = false;
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.brown[300],
          child: btn,
        ),
      ),
    );
  }
}
