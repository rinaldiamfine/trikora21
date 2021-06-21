import 'package:flutter/material.dart';
import 'package:trikora21/home.dart';
import 'package:trikora21/signIn.dart';

void main() {
  runApp(MaterialApp(
    title: "Trikora 21",
    home: SignIn(),
  ));
}

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("Lets Go!"),
          color: Colors.blue,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
    );
  }
}
