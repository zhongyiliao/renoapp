import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:reno_application_1/user/photo_item_seller.dart';
import 'package:reno_application_1/user/photo_seller.dart';
import 'package:reno_application_1/user/user_home/Photos_item.dart';
import 'package:reno_application_1/user/user_home/photo.dart';
import 'package:reno_application_1/user/view_all_user/photo_item_view_all_user.dart';
import 'package:reno_application_1/user/view_all_user/photo_view_all.dart';

class Photos_staggered_gridview_view_all_user extends StatelessWidget {
  final photosList = Photo_view_all.generateImages();
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      child: StaggeredGridView.countBuilder(
        // padding: EdgeInsets.all(10),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        itemCount: photosList.length,
        crossAxisCount: 4,
        itemBuilder: (context, index) => Photo_view_all_user(photosList[index]),
        staggeredTileBuilder: (_) => StaggeredTile.fit(2),
      ),
    );
  }
}
