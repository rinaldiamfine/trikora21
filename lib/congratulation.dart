import 'package:flutter/material.dart';
import 'package:trikora21/menu.dart';
import 'home.dart';

class CongratulationQuiz extends StatefulWidget {
  const CongratulationQuiz({Key? key}) : super(key: key);

  @override
  _CongratulationQuizState createState() => _CongratulationQuizState();
}

class _CongratulationQuizState extends State<CongratulationQuiz> {
  final correctQuestion = 6;

  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double screenHeight(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).height / dividedBy;
  }

  double screenWidth(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).width / dividedBy;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/congratulationBackground.png"),
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        "Awesome!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        correctQuestion.toString() +
                            " pertanyaan berhasil dijawab.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 3.3,
                          width: MediaQuery.of(context).size.height / 3.3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                width: MediaQuery.of(context).size.height / 3.3,
                                height:
                                    MediaQuery.of(context).size.height / 3.3,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/thumbsup.png"))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    minWidth: MediaQuery.of(context).size.width - 20,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Main Lagi",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Menu()),
                          ModalRoute.withName('/'));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      // ignore: deprecated_member_use
                      FlatButton(
                        minWidth: MediaQuery.of(context).size.width / 2 - 30,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          "Pilih Game Lain",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Menu()),
                              ModalRoute.withName('/'));
                        },
                      ),
                      Spacer(),
                      // ignore: deprecated_member_use
                      FlatButton(
                        minWidth: MediaQuery.of(context).size.width / 2 - 30,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          "Halaman Utama",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          // Navigator.of(context).pushAndRemoveUntil(
                          //     MaterialPageRoute(builder: (context) => Home()),
                          //     (Route<dynamic> route) => false);

                          // runApp(MaterialApp(
                          //   home: Home(),
                          // ));
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Menu()),
                              ModalRoute.withName('/'));
                        },
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   body: SingleChildScrollView(
    //     physics: NeverScrollableScrollPhysics(),
    //     child: Container(
    //       child: Column(
    //         children: <Widget>[
    //           //BANNER
    //           Stack(
    //             children: <Widget>[
    //               Image(
    //                 image: AssetImage(
    //                     "assets/images/congratulationBackground.png"),
    //                 height: MediaQuery.of(context).size.height,
    //                 // height: screenHeight(context, dividedBy: 1.3),
    //                 width: double.infinity,
    //                 fit: BoxFit.cover,
    //                 alignment: Alignment.center,
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
