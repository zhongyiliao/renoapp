// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';

class Chat_user extends StatefulWidget {
  @override
  State<Chat_user> createState() => _Chat_userState();
}

class _Chat_userState extends State<Chat_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Chat',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: getColorFromHex("#FFFFFF"),

      body: SafeArea(
        child: ListView.builder(

            // padding: EdgeInsets.symmetric(vertical: 30),
            itemCount: 13,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/chatboxuser');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 90,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage('assets/images/user.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Miss A',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('10:00 AM')
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
