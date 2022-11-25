import 'package:celebrities_app/modules/celebrity/celebirty_item.dart';
import 'package:celebrities_app/provider/celebrity_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CelebrityDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CelebrityProvider>(
      create: (context) => CelebrityProvider(),
      child: Consumer<CelebrityProvider>(
        builder: (ctx, celebirtyProvider, _) {
          return celebirtyProvider.celebrityList.isNotEmpty
              ? GridView.builder(
                  itemCount: celebirtyProvider.celebrityList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    crossAxisCount:
                        MediaQuery.of(context).size.width < 1000 ? 2 : 3,
                  ),
                  itemBuilder: (context, index) {
                    return CelebirtyItem(
                        celebirty: celebirtyProvider.celebrityList[index]);
                  })
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
