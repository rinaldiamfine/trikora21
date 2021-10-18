import 'package:flutter/material.dart';
import 'package:trikora21/congratulation.dart';

import 'request.dart';

class DailyQuiz extends StatefulWidget {
  final indexQuery;
  const DailyQuiz({Key? key, this.indexQuery}) : super(key: key);

  @override
  _DailyQuizState createState() {
    var dailyQuizState = _DailyQuizState();
    dailyQuizState.indexQuery = this.indexQuery;
    return dailyQuizState;
  }
}

class _DailyQuizState extends State<DailyQuiz> {
  var indexQuery;
  var totalQuestion = 10;
  var nowQuestion = 1;
  var selectedAnswer = "";

  late Future<Question> futureQuestion;
  late Future<List<QuestionAnswer>> futureQuestionAnswer;

  @override
  void initState() {
    super.initState();
    futureQuestion = fetchQuestion(this.indexQuery);
    futureQuestion.then((value) {
      futureQuestionAnswer = fetchQuestionAnswer(value.id);
      return true;
    });
  }

  void setSelectedAnswer(String value) {
    setState(() {
      selectedAnswer = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Question>(
        future: futureQuestion,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? Stack(
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/images/stage.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 50),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                            child: Row(
                              children: [
                                Text(
                                  "Daily Quiz",
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
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Text(
                                  nowQuestion.toString() +
                                      "/" +
                                      totalQuestion.toString() +
                                      " Pertanyaan",
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
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              snapshot.data!.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.left,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Text(
                                  "Jawaban",
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
                          GenerateQuestionAnswer(
                            futureQuestionAnswer: this.futureQuestionAnswer,
                            selectedAnswer: this.selectedAnswer,
                            indexQuery: snapshot.data!.id,
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              width: double.infinity,
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      "Jawab ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CongratulationQuiz()));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/stage.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
        },
      ),
    );
  }
}

class GenerateQuestionAnswer extends StatelessWidget {
  final selectedAnswer;
  final indexQuery;
  final Future<List<QuestionAnswer>> futureQuestionAnswer;

  const GenerateQuestionAnswer({
    Key? key,
    required this.futureQuestionAnswer,
    this.indexQuery,
    this.selectedAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder<List<QuestionAnswer>>(
      future: futureQuestionAnswer,
      builder: (context, snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data!.length,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 0),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: double.infinity,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        color: selectedAnswer == snapshot.data![index].key
                            ? Color(0xFFF29E59)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Align(
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: selectedAnswer ==
                                                snapshot.data![index].key
                                            ? Colors.white
                                            : Color(0xFFF29E59),
                                        shape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  snapshot.data![index].name.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {
                          // setSelectedAnswer("A");
                        },
                      ),
                    ),
                  );
                })
            : Text("");
      },
    ));
  }
}
