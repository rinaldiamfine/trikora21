import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trikora21/game/gameButtonMoved.dart';
import 'package:trikora21/game/gameCharacter.dart';
import 'package:trikora21/game/gameCharacterJump.dart';

class Gempa1 extends StatefulWidget {
  @override
  _Gempa1State createState() => _Gempa1State();
}

class _Gempa1State extends State<Gempa1> {
  static double charX = 0;
  static double charY = 1;
  double time = 0;
  double height = 0;
  double initialHeight = charY;
  String direction = "right";
  bool isRun = false;
  bool isJump = false;

  void preJump() {
    time = 0;
    initialHeight = charY;
  }

  void jump() {
    if (isJump == false) {
      preJump();
      isJump = true;
      Timer.periodic(Duration(milliseconds: 50), (timer) {
        time += 0.05;
        height = -4.9 * time * time + 5 * time;

        if (initialHeight - height > 1) {
          isJump = false;
          setState(() {
            charY = 1;
          });
          timer.cancel();
        } else {
          setState(() {
            charY = initialHeight - height;
          });
        }
      });
    }
  }

  void moveRight() {
    direction = "right";
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (GameButtonMoved().userIsHoldingButton() == true) {
        setState(() {
          charX += 0.02;
          isRun = !isRun;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void moveLeft() {
    direction = "left";
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (GameButtonMoved().userIsHoldingButton() == true) {
        setState(() {
          charX -= 0.02;
          isRun = !isRun;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Container(
                    color: Colors.green,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 0),
                      child: isJump
                          ? GameCharacterJump(
                              direction: direction,
                            )
                          : GameCharacter(
                              direction: direction,
                              isRun: isRun,
                            ),
                      alignment: Alignment(charX, charY),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("Points"),
                            Text("000000"),
                          ],
                        ),
                        Column(
                          children: [],
                        ),
                        Column(
                          children: [Text("Maps"), Text("Gempa - 1")],
                        )
                      ],
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.brown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GameButtonMoved(
                      btn: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      ),
                      action: moveLeft,
                    ),
                    GameButtonMoved(
                      btn: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                      ),
                      action: moveRight,
                    ),
                    GameButtonMoved(
                        btn: Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                        ),
                        action: jump),
                    GameButtonMoved(
                      btn: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
