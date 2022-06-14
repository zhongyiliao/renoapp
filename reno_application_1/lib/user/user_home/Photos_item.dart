import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';
import 'package:reno_application_1/user/user_home/photo.dart';

class PhotosItem extends StatelessWidget {
  final Photo photo;
  PhotosItem(this.photo);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: photo.height,
      width: 240,
      decoration: BoxDecoration(
        color: getColorFromHex('#F7F7F7'),
        // image: DecorationImage(
        //   image: AssetImage(photo.imageUrl),
        //   fit: BoxFit.contain,
        // ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/itemdetail');
              },
              child: Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(photo.imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [Text('Gamming Chair')],
            ),
            Row(
              children: [
                Text('\$150.0'),
                Spacer(),
                Icon(
                  Icons.add_circle,
                  color: getColorFromHex('#B85229'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
