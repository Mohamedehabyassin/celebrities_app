import 'package:celebrities_app/screen/celebrity/celebrity_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(child: Text('Celebrities',style: TextStyle(
          fontSize: 28
        ),)),
        elevation: 0,
      ),
      body: CelebrityView(),
    );
  }
}
