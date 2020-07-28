import 'dart:convert';

import 'package:englishPracticeApp/model/questions.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

String url = 'http://10.0.2.2:8081/quiz/v1/question/random/10';
Future<List<Question>> getPost() async {
  List<Question> _questions = [];
  var response = await http.get(url);
  final bodyResponse = jsonDecode(response.body);
  if (bodyResponse is List) {
    _questions = bodyResponse.map((e) => Question.fromJson(e)).toList();
  }
  return _questions;
}
