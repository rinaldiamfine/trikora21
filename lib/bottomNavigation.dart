import 'package:flutter/material.dart';
import 'package:trikora21/tabs/directionTab.dart';
import 'package:trikora21/tabs/homeTab.dart';
import 'package:trikora21/tabs/accountTab.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  final titleList = ["Petunjuk", "Utama", "Akun"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(titleList[_selectedIndex]),
        backgroundColor: Color(0xFFF29E59),
      ),
      backgroundColor: Color(0xFFF7F8F9),
      body: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFF29E59),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.share_location),
              title: Text("Petunjuk"),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text("Utama"),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("Akun"),
              backgroundColor: Colors.white)
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Home"),
  //     ),
  //     body: TabBarView(
  //       children: <Widget>[TabPetunjuk(), TabUtama(), TabAkun()],
  //       controller: _controller,
  //     ),
  //     bottomNavigationBar: Material(
  //       color: Colors.white,
  //       child: TabBar(
  //         tabs: <Widget>[
  //           Tab(
  //             icon: Icon(
  //               Icons.compass_calibration,
  //               color: Color(0xFF7B7B7B),
  //             ),
  //           ),
  //           Tab(
  //             icon: Icon(
  //               Icons.home,
  //               color: Color(0xFF7B7B7B),
  //             ),
  //           ),
  //           Tab(
  //             icon: Icon(
  //               Icons.person,
  //               color: Color(0xFF7B7B7B),
  //             ),
  //           ),
  //         ],
  //         controller: _controller,
  //       ),
  //     ),
  //   );
  // }
}
