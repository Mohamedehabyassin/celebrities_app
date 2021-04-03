import 'package:celebrities_app/model/person.dart';
import 'package:celebrities_app/request/person_request.dart';
import 'package:flutter/cupertino.dart';

class CelebrityProvider extends ChangeNotifier {
  PersonRequest _personRequest = PersonRequest();
  List<Celebrity> celebrityList = [];

  CelebrityProvider() {
    getData();
  }

  getData() {
    _personRequest.fetchData().then((list) {
      celebrityList = list;
      notifyListeners();
    });
  }
}
