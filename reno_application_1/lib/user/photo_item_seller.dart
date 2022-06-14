import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';
import 'package:reno_application_1/user/photo_seller.dart';

class Photo_item_seller extends StatelessWidget {
  final Photo_seller photo_seller;
  Photo_item_seller(this.photo_seller);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: photo_seller.height,
      width: 250,
      decoration: BoxDecoration(
        color: getColorFromHex('#F7F7F7'),
        image: DecorationImage(
          image: AssetImage(photo_seller.imageUrl),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      // child: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      //   child: Column(
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       InkWell(
      //         onTap: () {
      //           Navigator.of(context).pushNamed('/itemdetail');
      //         },
      //         child: Container(
      //           // width: 150,
      //           // height: 100,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(10),
      //             image: DecorationImage(
      //               image: AssetImage(photo_seller.imageUrl),
      //               fit: BoxFit.fill,
      //             ),
      //           ),
      //         ),
      //       ),

      //     ],
      //   ),
      // ),
    );
  }
}
