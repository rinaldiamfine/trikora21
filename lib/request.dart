import 'dart:async';
import 'dart:convert';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

Future<List<QuestionCategory>> fetchQuestionCategory() async {
  final response = await http
      .get(Uri.parse('https://edurisk.herokuapp.com/api/question-category'));

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    var sets = (jsonResponse as List)
        .map((e) => new QuestionCategory.fromMap(e))
        .toList();
    return sets;
    // return QuestionCategory.fromMap(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

Future<Question> fetchQuestion(int indexQuery) async {
  final response = await http.get(Uri.parse(
      'https://edurisk.herokuapp.com/api/question/?q=' +
          indexQuery.toString()));

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    var sets =
        (jsonResponse as List).map((e) => new Question.fromMap(e)).toList();
    return sets[0];
  } else {
    throw Exception('Failed to load album');
  }
}

Future<List<QuestionAnswer>> fetchQuestionAnswer(int indexQuery) async {
  final response = await http.get(Uri.parse(
      'https://edurisk.herokuapp.com/api/question-answer/?q=' +
          indexQuery.toString()));

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    var sets = (jsonResponse as List)
        .map((e) => new QuestionAnswer.fromMap(e))
        .toList();
    return sets;
  } else {
    throw Exception('Failed to load album');
  }
}

class QuestionCategory {
  final int id;
  final String name;

  QuestionCategory({
    required this.id,
    required this.name,
  });

  factory QuestionCategory.fromMap(Map<String, dynamic> json) {
    return QuestionCategory(
      id: json['id'],
      name: json['name'],
    );
  }
}

class Question {
  final int id;
  final String name;
  final String correctAnswer;
  final int questionCategory;

  Question({
    required this.id,
    required this.name,
    required this.correctAnswer,
    required this.questionCategory,
  });

  factory Question.fromMap(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      name: json['name'],
      correctAnswer: json['correctAnswer'],
      questionCategory: json['questionCategory'],
    );
  }
}

class QuestionAnswer {
  final int id;
  final String name;
  final String key;
  final int question_answer;

  QuestionAnswer({
    required this.id,
    required this.name,
    required this.key,
    required this.question_answer,
  });

  factory QuestionAnswer.fromMap(Map<String, dynamic> json) {
    return QuestionAnswer(
      id: json['id'],
      name: json['name'],
      key: json['key'],
      question_answer: json['question_answer'],
    );
  }
}
