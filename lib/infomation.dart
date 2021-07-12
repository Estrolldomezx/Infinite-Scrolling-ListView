import 'package:dio/dio.dart';

class Characters {
  final String name;
  final String url;

  Characters(this.name, this.url);

  factory Characters.fromJson(dynamic data) {
    return Characters(data['name'], data['url']);
  }
}

class Infomation {
  //get image of starwars
  Future<List<Characters>> fetchPeople({int page = 1}) async {
    var response = await Dio().get('https://swapi.dev/api/people/?page=$page');

    List<dynamic> results = response.data['response'];
    return results.map((it) => Characters.fromJson(it)).toList();
  }
}
