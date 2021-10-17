import 'package:flutter/material.dart';
import 'package:trikora21/dailyQuiz.dart';
import 'package:trikora21/home.dart';
import 'package:trikora21/quiz.dart';

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
    if (menu == "Utama") {
      return Home();
    } else if (menu == "Akun") {
      // return CongratulationQuiz();
      // return DailyQuiz();
      return Scaffold();
    } else {
      return QuizList();
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
            // ignore: deprecated_member_use
            title: Text('Utama'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.question_answer_rounded),
            // ignore: deprecated_member_use
            title: Text('Kuis'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // ignore: deprecated_member_use
            title: Text('Akun'),
          )
        ],
      ),
    );
  }
}
