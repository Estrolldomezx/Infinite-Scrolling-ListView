import 'package:dio/dio.dart';

class Character {
  final String name;
  final String url;

  Character(this.name, this.url);

  factory Character.fromJson(dynamic data) {
    return Character(data['name'], data['url']);
  }
}

class Infomation {
  //get info of character
  Future<List<Character>> fetchPeople({int page = 1}) async {
    var response = await Dio().get('https://swapi.dev/api/people/?page=$page');

    List<dynamic> results = response.data['response'];
    return results.map((it) => Character.fromJson(it)).toList();
  }

  fetchChar({int page}) {}
}
