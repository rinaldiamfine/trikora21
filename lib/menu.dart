import 'package:flutter/material.dart';
import 'package:trikora21/game/gameMenu.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class PlaceholderBodyWidget extends StatelessWidget {
  final Color color;

  PlaceholderBodyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: color,
    // );
    return Scaffold(
      backgroundColor: Color(0xFFF7F8F9),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: FlatButton(
                  onPressed: () {
                    runApp(MaterialApp(
                      title: "Trikora 21",
                      home: GameMenu(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 17.0),
                    child: Text(
                      "Lanjut",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderBodyWidget(Colors.white),
    PlaceholderBodyWidget(Colors.deepOrange),
    PlaceholderBodyWidget(Colors.green)
  ];
  final List<String> _headTitle = ["Petunjuk", "Utama", "Akun"];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_headTitle[_currentIndex]),
        backgroundColor: Color(0xFFF29E59),
      ),
      backgroundColor: Color(0xFFF7F8F9),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFF29E59),
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.share_location),
            title: Text('Petunjuk'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Utama'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Akun'))
        ],
      ),
    );
  }
}
