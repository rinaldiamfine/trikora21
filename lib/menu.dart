import 'package:flutter/material.dart';
import 'package:trikora21/congratulation.dart';
import 'package:trikora21/dailyQuiz.dart';
import 'package:trikora21/game/gameMenu.dart';
import 'package:trikora21/home.dart';

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
      return Home();
    } else if (menu == "Akun") {
      return CongratulationQuiz();
      // return DailyQuiz();
    } else {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/congratulationBackground.png"),
              fit: BoxFit.cover,
              alignment: Alignment.centerRight,
              width: width,
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.8),
                        itemBuilder: (context, index) => ListQuiz(
                              quiz: Quiz(
                                  id: 1,
                                  quizName: "ASD",
                                  quizDescription: "BCD"),
                            )),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }
  }
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderBodyWidget(
      menu: "Utama",
    ),
    PlaceholderBodyWidget(
      menu: "Daily Quiz",
    ),
    PlaceholderBodyWidget(
      menu: "Akun",
    )
  ];
  final List<String> _headTitle = ["Utama", " Daily Quiz", "Akun"];

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

class ListQuiz extends StatelessWidget {
  final Quiz quiz;
  // final Function press;
  const ListQuiz({Key? key, required this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(20),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.circular(18),
              shape: BoxShape.circle,
              // shape: BoxShape.circle,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Icon(Icons.check_circle_outline_rounded),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text("The Curious\nPlayer"),
            ),
          ],
        )
      ],
    );
  }
}

class Quiz {
  final String quizName, quizDescription;
  final int id;
  Quiz({
    required this.quizName,
    required this.quizDescription,
    required this.id,
  });
}

List<Quiz> quiz = [
  Quiz(quizName: "APA", quizDescription: "YOK", id: 1),
  Quiz(quizName: "APA", quizDescription: "YOK", id: 2)
];
