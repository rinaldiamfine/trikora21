import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                          ),
                          Text("\n")
                        ],
                      ),
                    ),
                  )
                ],
              ),

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
