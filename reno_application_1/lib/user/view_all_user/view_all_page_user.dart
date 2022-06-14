import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';
import 'package:reno_application_1/user/my_catelog/photos_staggered_gridview_mycatelog.dart';
import 'package:reno_application_1/user/view_all_user/photos_staggered_gridview_view_all_user.dart';

class view_all_page_user extends StatefulWidget {
  const view_all_page_user({Key key}) : super(key: key);

  @override
  State<view_all_page_user> createState() => _view_all_page_userState();
}

class _view_all_page_userState extends State<view_all_page_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 40,
            child: TextField(
              autocorrect: true,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage("assets/images/sort.png"),
                      color: getColorFromHex('#B85229'),
                      size: 100,
                    ),
                  ),
                  isCollapsed: true,
                  // focusedBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Search',
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ))),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: OutlinedButton(
              onPressed: () {},
              child: ImageIcon(
                AssetImage("assets/images/shoppingbag.png"),
                color: getColorFromHex('#B85229'),
              ),
              style: OutlinedButton.styleFrom(
                shape: CircleBorder(),
                // padding: EdgeInsets.all(24),
                fixedSize: Size(5, 10),
              ),
            ),
          )
        ],
      ),
      backgroundColor: getColorFromHex("#FFFFFF"),
      
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Living room',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Photos_staggered_gridview_view_all_user(),
             
            ],
          ),
        ),
      ),
    );
  }
}
