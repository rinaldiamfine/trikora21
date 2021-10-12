import 'package:flutter/material.dart';

class CongratulationQuiz extends StatefulWidget {
  const CongratulationQuiz({Key? key}) : super(key: key);

  @override
  _CongratulationQuizState createState() => _CongratulationQuizState();
}

class _CongratulationQuizState extends State<CongratulationQuiz> {
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
                        "x pertanyaan berhasil dijawab.",
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
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Align(
                    child: Container(
                      width: MediaQuery.of(context).size.height / 3.3,
                      height: MediaQuery.of(context).size.height / 3.3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "Main Lagi",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              "Pilih Game Lain",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              "Halaman Utama",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {},
                        ),
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
