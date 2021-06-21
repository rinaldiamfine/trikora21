import 'package:flutter/material.dart';

class TabPetunjuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.directions,
                size: 200,
                color: Color(0xFFF29E59),
              ),
              Text("Petunjuk", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
