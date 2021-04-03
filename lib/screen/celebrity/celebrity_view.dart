import 'package:celebrities_app/provider/celebrity_provider.dart';
import 'package:celebrities_app/screen/celebrity/celebirty_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CelebrityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CelebrityProvider>(
      create: (context) => CelebrityProvider(),
      child: Consumer<CelebrityProvider>(
        builder: (ctx, celebirtyProvider, _) {
          return celebirtyProvider.celebrityList.isNotEmpty
              ? ListView.builder(
            itemCount: celebirtyProvider.celebrityList.length,
              itemBuilder: (context,index){
              return CelebirtyWidget(celebirty: celebirtyProvider.celebrityList[index]);
              })
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
