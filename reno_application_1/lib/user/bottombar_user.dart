import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';
import 'package:reno_application_1/user/chat_user/chat_user.dart';
import 'package:reno_application_1/user/profile_user.dart';
import 'package:reno_application_1/user/user_add_sell.dart';
import 'package:reno_application_1/user/user_home/user_home.dart';

class Bottombar_user extends StatefulWidget {
  @override
  State<Bottombar_user> createState() => _Bottombar_user();
}

class _Bottombar_user extends State<Bottombar_user> {
  int _selectedIndex = 0;
  final screens = [User_home(), User_add_sell(), Chat_user(), Profile_user()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // unselectedItemColor: Colors.black,

        //      selectedItemColor: Colors.white,
        // unselectedItemColor: Color(0xFFF434A50),

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Vector.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/sofa.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "assets/images/chat1.png",
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/profile.png"),
            ),
            label: '',
          ),
        ],
        iconSize: 35,

        fixedColor: getColorFromHex('#B85229'),
        backgroundColor: getColorFromHex('#FFFFFF'),
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // selectedItemColor: Colors.black,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
