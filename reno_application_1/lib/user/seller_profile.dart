import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/rendering.dart';
import 'package:reno_application_1/color.dart';
import 'package:reno_application_1/user/photos_staggered_gridview_seller.dart';
import 'package:reno_application_1/user/user_home/photos_staggered_gridview.dart';

class Seller_profile extends StatefulWidget {
  @override
  State<Seller_profile> createState() => _Seller_profileState();
}

class _Seller_profileState extends State<Seller_profile> {
  Widget _Profilearea() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/user.png'),
              // backgroundColor: Colors.black,
            ),
            Column(
              children: [
                Text(
                  '6',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('POSTS')
              ],
            ),
            Column(
              children: [
                Text(
                  '9.8',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('RATING')
              ],
            ),
            Column(
              children: [
                Text(
                  '5',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('COMPLETE')
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _Describtionarea() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Text(
          'Mark lee',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Designer/Seller',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
            "I'm a room designer, good at decorate for bed room and some area if you need."),
        // SizedBox(
        //   height: 10,
        // ),
      ],
    );
  }

  Widget _Followbutton() {
    return Column(
      children: [
        ButtonTheme(
          height: 40,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/postpage');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Follow',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            color: getColorFromHex('#B85229'),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Mark lee',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            _Profilearea(),
            _Describtionarea(),
            SizedBox(
              height: 20,
            ),
            _Followbutton(),
            // StaggeredGridView(),
            SizedBox(
              height: 40,
            ),
            Photos_staggered_gridview_seller(),
          ],
        ),
      ),
    );
  }
}
