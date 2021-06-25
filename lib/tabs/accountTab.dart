import 'package:flutter/material.dart';

class TabAkun extends StatelessWidget {
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
                Icons.verified_user,
                size: 200,
                color: Color(0xFFF29E59),
              ),
              Text("Akun", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
