import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reno_application_1/initial_page.dart';
import 'package:reno_application_1/user/bottombar_user.dart';
import 'package:reno_application_1/user/chat_user/chat_box_user.dart';
import 'package:reno_application_1/user/check_out.dart';
import 'package:reno_application_1/user/edit_profile.dart';
import 'package:reno_application_1/user/item_detail.dart';
import 'package:reno_application_1/user/my_catelog/my_catelog.dart';
import 'package:reno_application_1/user/mycart_user.dart';
import 'package:reno_application_1/user/profile_user.dart';
import 'package:reno_application_1/user/seller_profile.dart';
import 'package:reno_application_1/user/user_add_sell.dart';
import 'package:reno_application_1/user/user_home/user_home.dart';
import 'package:reno_application_1/user/user_register.dart';
import 'package:reno_application_1/user/view_all_user/view_all_page_user.dart';
// import 'package:reno_application_1/initial_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  var home;
  runApp(GetMaterialApp(
    initialRoute: home,
    getPages: [
      //Initial page

      GetPage(name: '/', page: () => Initial_page()),

      //Initial page


      //Register route

      //Register route

      // User pages
      GetPage(name: '/user_register', page: () => User_register()),
      GetPage(name: '/user_add_sell', page: () => User_add_sell()),
      GetPage(name: '/chatboxuser', page: () => chat_box_user()),
      GetPage(name: '/editprofile', page: () => Edit_profile()),
      GetPage(name: '/itemdetail', page: () => Item_detail()),
      GetPage(name: '/sellerprofile', page: () => Seller_profile()),
      GetPage(name: '/mycatelog', page: () => My_catelog()),
      GetPage(name: '/bottombaruser', page: () => Bottombar_user()),
      GetPage(name: '/mycartuser', page: () => Mycart_user()),
      GetPage(name: '/viewalluser', page: () => view_all_page_user()),
      GetPage(name: '/checkout', page: () => Check_out()),







      // User pages

      // Admin pages

      // Admin pages
    ],
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),

    // routes: <String, WidgetBuilder>{
    //   '/':(BuildContext context) => First(),
    //   '/post':(BuildContext context) => Post(),
    // },
  ));
}
