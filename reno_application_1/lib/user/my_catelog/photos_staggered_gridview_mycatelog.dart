import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:reno_application_1/user/my_catelog/photo_item_mycatelog.dart';
import 'package:reno_application_1/user/my_catelog/photo_mycatelog.dart';
import 'package:reno_application_1/user/photo_item_seller.dart';
import 'package:reno_application_1/user/photo_seller.dart';
import 'package:reno_application_1/user/user_home/Photos_item.dart';
import 'package:reno_application_1/user/user_home/photo.dart';

class Photos_staggered_gridview_mycatelog extends StatelessWidget {
  final photosList = Photo_mycatelog.generateImages();
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      child: StaggeredGridView.countBuilder(
        // padding: EdgeInsets.all(10),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisSpacing: 8,
        mainAxisSpacing: 10,
        itemCount: photosList.length,
        crossAxisCount: 4,
        itemBuilder: (context, index) => Photo_item_mycatelog(photosList[index]),
        staggeredTileBuilder: (_) => StaggeredTile.fit(2),
      ),
    );
  }
}
