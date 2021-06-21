import 'package:flutter/material.dart';

class TabUtama extends StatelessWidget {
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
                Icons.home,
                size: 200,
                color: Color(0xFFF29E59),
              ),
              Text("Utama", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
