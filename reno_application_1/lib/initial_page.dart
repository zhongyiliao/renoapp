import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reno_application_1/color.dart';
// import 'package:ui/color.dart';
// import 'package:ui/user/home_user/home_user.dart';

class Initial_page extends StatefulWidget {
  @override
  State<Initial_page> createState() => _Initial_pageState();
}

class _Initial_pageState extends State<Initial_page> {
  Widget _Usernamefield() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Username'),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                hintText: 'Username',
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }

  Widget _Passwordfield() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Password'),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                hintText: 'Password',
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }

  Widget _Loginbutton() {
    return Column(
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            // border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10),
            color: getColorFromHex('#B85229'),
          ),
          // color: Colors.black,
          width: double.infinity,
          child: FlatButton(
            onPressed: () {Navigator.of(context).pushReplacementNamed('/bottombaruser');},
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _Registerfield() {
    return Row(
      children: [
        Text(
          'Have an account yet?',
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          width: 5,
        ),
        TextButton(
          onPressed: () {Navigator.of(context).pushNamed('/user_register');},
          child: Text(
            'Register',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Title'),
      // ),
      backgroundColor: getColorFromHex("#FFFFFF"),

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            Container(
              // color: Colors.amber,
              padding: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.jpg'),
                    backgroundColor: Colors.red,
                    radius: 80,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    ' RENO',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _Usernamefield(),
            SizedBox(
              height: 20,
            ),
            _Passwordfield(),
            SizedBox(
              height: 40,
            ),
            _Loginbutton(),
            SizedBox(
              height: 20,
            ),
            _Registerfield(),
          ],
        ),
      ),
    );
  }
}
