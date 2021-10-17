import 'package:flutter/material.dart';
import 'package:trikora21/request.dart';

class QuizList extends StatefulWidget {
  const QuizList({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<QuizList> {
  late Future<List<QuestionCategory>> futureListQuestionCategory;

  @override
  void initState() {
    super.initState();
    futureListQuestionCategory = fetchQuestionCategory();
  }

  String setupImagePath(int id) {
    var listPath = <String>[
      "assets/images/grade-1.png",
      "assets/images/grade-2.png",
      "assets/images/grade-3.png",
      "assets/images/grade-4.png"
    ];
    var calculateIndex = id / listPath.length;
    var splitIndex = calculateIndex.toString().split(".");
    var pathString = listPath[listPath.length - 1];
    if (splitIndex[1] == "25") {
      pathString = listPath[0];
    } else if (splitIndex[1] == "5") {
      pathString = listPath[1];
    } else if (splitIndex[1] == "75") {
      pathString = listPath[2];
    } else {
      pathString = listPath[3];
    }
    return pathString;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<QuestionCategory>>(
        future: futureListQuestionCategory,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? Stack(
                  children: <Widget>[
                    Image(
                      image: AssetImage(
                          "assets/images/congratulationBackground.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.centerRight,
                      width: MediaQuery.of(context).size.width,
                    ),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: snapshot.data!.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height / 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // ignore: deprecated_member_use
                              FlatButton(
                                onPressed: () {
                                  print("PRESSED");
                                },
                                color: Colors.white,
                                shape: CircleBorder(
                                  side: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image(
                                    image: AssetImage(setupImagePath(
                                        snapshot.data![index].id)),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.centerRight,
                                    width: 120,
                                    height: 120,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Icon(
                                        Icons.check_circle_outline_rounded),
                                  ),
                                  Text(
                                    snapshot.data![index].name,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.left,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Spacer(),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
