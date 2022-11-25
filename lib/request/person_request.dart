import 'package:celebrities_app/model/person.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PersonRequest {
  final url = Uri.parse(
      'https://api.themoviedb.org/3/person/popular?api_key=4a08c6c7edfda4942cd5f6d6d343d9ab');

  Future fetchData() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var responseObject = json.decode(response.body);
      Person person = Person.fromJson(responseObject);
      return person.results;
    } else {
      throw Exception("can't load");
    }
  }
}
