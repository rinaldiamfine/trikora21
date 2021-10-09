import 'package:flutter/material.dart';
import 'package:trikora21/game/gameMenu.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class PlaceholderBodyWidget extends StatelessWidget {
  final menu;
  PlaceholderBodyWidget({this.menu});

  @override
  Widget build(BuildContext context) {
    final appBarHeight = MediaQuery.of(context).size.height -
        ((MediaQuery.of(context).padding.top + kToolbarHeight) +
            (kBottomNavigationBarHeight));
    final width = MediaQuery.of(context).size.width;
    if (menu == "Utama") {
      return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: appBarHeight, //HARDCODE FOR IPHONE 12
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/utamaScreen.png"),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Positioned(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: width,
                                child: Text(
                                  "Halo!",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                width: width,
                                child: Text(
                                  "Siap menjadi sigap dalam \nmenghadapi bencana?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: width * 0.6,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Positioned(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: width,
                                child: Text(
                                  "Mini Games!",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: width * 0.7,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Positioned(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: width / 3,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 1,
                                          offset: Offset(3, 3),
                                        ),
                                      ]),
                                  child: TextButton(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Gempa      ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                  textAlign: TextAlign.left,
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Icon(
                                              Icons.check_circle_outline,
                                              color: Color(0xFFF29E59),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onPressed: () {
                                      runApp(MaterialApp(
                                        title: "Gempa",
                                        home: GameMenu(),
                                      ));
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: width / 3,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300]!.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 1,
                                          offset: Offset(3, 3),
                                        ),
                                      ]),
                                  child: TextButton(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Banjir     ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                  textAlign: TextAlign.left,
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Icon(
                                              Icons.lock_outline,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: width / 3,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300]!.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 1,
                                          offset: Offset(3, 3),
                                        ),
                                      ]),
                                  child: TextButton(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Longsor",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                  textAlign: TextAlign.left,
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Icon(
                                              Icons.lock_outline,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      width: width,
                      top: MediaQuery.of(context).size.width * 0.65,
                      left: MediaQuery.of(context).size.width * 0.25,
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/utamaPerson.png",
                              scale: 3,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else if (menu == "Akun") {
      return Scaffold();
    } else {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xFFF7F8F9),
            child: Column(
              children: <Widget>[
                //BANNER
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage("assets/images/direction-2.png"),
                        height: MediaQuery.of(context).size.height / 3 + 40,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        height: MediaQuery.of(context).size.height / 3,
                        width: double.infinity,
                        child: Column(
                          children: <Widget>[
                            Spacer(),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Halo!",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Siap menjadi sigap dalam\nmenghadapi bencana?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(
                //   child:
                //       Image(image: AssetImage("assets/images/direction-2.png")),
                // ),

                //TITLE LIST
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: new Row(
                    children: [
                      Text(
                        "Sigap Bencana",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),

                //BODY LIST
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: InkWell(
                        onTap: () {
                          print("DETECT 1");
                        },
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF29E59),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.access_alarm,
                                          color: Colors.black,
                                          size: 40,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Persiapan kebutuhan\nbencana",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.left,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: InkWell(
                        onTap: () {
                          print("DETECT 2");
                        },
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF29E59),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.search,
                                          color: Colors.black,
                                          size: 40,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Investigasi Bencana",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.left,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: InkWell(
                        onTap: () {
                          print("DETECT 3");
                        },
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF29E59),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.notifications,
                                          color: Colors.black,
                                          size: 40,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Lapor Bencana",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.left,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderBodyWidget(
      menu: "Petunjuk",
    ),
    PlaceholderBodyWidget(
      menu: "Utama",
    ),
    PlaceholderBodyWidget(
      menu: "Akun",
    )
  ];
  final List<String> _headTitle = ["Utama", "Ques", "Akun"];

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
            icon: Icon(Icons.home),
            title: Text('Utama'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.question_answer_rounded),
            title: Text('Kuis'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Akun'),
          )
        ],
      ),
    );
  }
}
