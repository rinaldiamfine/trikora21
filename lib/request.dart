import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class QuestionList {
  final String name;
  final String description;
  final int price;
  final String image;

  QuestionList(this.name, this.description, this.price, this.image);
  factory QuestionList.fromMap(Map<String, dynamic> json) {
    return QuestionList(
      json['name'],
      json['description'],
      json['price'],
      json['image'],
    );
  }
}
