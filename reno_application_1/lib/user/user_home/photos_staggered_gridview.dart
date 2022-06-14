import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:reno_application_1/user/user_home/Photos_item.dart';
import 'package:reno_application_1/user/user_home/photo.dart';

class PhotosStaggerdGridView extends StatelessWidget {
  final photosList = Photo.generateImages();
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
        itemBuilder: (context, index) => PhotosItem(photosList[index]),
        staggeredTileBuilder: (_) => StaggeredTile.fit(2),
      ),
    );
  }
}
