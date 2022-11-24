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
        height: MediaQuery.of(context).size.height/3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.grey.shade200,),

        child: Row(
          children: [
            Expanded(child: Image.network(
              'https://image.tmdb.org/t/p/w500/${celebirty.profilePath}',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,),),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${celebirty.name}',style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25
                  )),
                  Text('${celebirty.knownFor[0].overview}',
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                      color: Colors.black87
                  )),
                ],
              ),
            ))
          ],
        ),
    ));
  }
}
