import 'package:celebrities_app/model/person.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CelebirtyWidget extends StatelessWidget {
  final Celebrity celebirty;

  CelebirtyWidget({this.celebirty});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> print(celebirty.name),
      child: Container(
        margin: EdgeInsets.all(14),
        decoration: BoxDecoration(color: Colors.white),
        child: Container(
          height: MediaQuery.of(context).size.height/2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 5),
            ],

          ),
          child: Image.network(
              'https://image.tmdb.org/t/p/w500/${celebirty.profilePath}',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
