import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';

class User_register extends StatefulWidget {
  @override
  State<User_register> createState() => _User_registerState();
}

class _User_registerState extends State<User_register> {
  Widget _Profileimage() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        CircleAvatar(
          radius: 58,
          backgroundImage: AssetImage("assets/images/user.png"),
          child: Stack(children: [
            Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {},
                  splashRadius: 18,
                  icon: Icon(
                    Icons.photo_sharp,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ]),
        )
      ],
    );
  }

  Widget _Namefield() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name'),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _Genderandbirthday() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Gender'),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 9,
        ),
        Spacer(),
        Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Your Birthday'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: InputBorder.none,
                      hintText: 'Date/month/year',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _Usernamefield() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Username'),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _Password() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password'),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _Email() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email'),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            // obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _Phonenumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone number'),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            keyboardType: TextInputType.phone,
            // obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _Promptpay() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('PromptPay'),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            keyboardType: TextInputType.number,
            // obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _setlocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: 'Set location',
                style: TextStyle(color: Colors.black),
                children: [
              TextSpan(
                  text: '  (set location for seller search)',
                  style: TextStyle(color: getColorFromHex('#B85229')))
            ])),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {},
          // splashColor: Colors.red,
          child: Container(
            // height: 130,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                // border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              minLeadingWidth: 10,
              leading: Icon(
                Icons.my_location,
                color: getColorFromHex('#B85229'),
              ),
              title: Text('Current location'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _Otheraddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
          text: 'Other detail address',
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
                text: '  (other detials for delivery)',
                style: TextStyle(color: getColorFromHex('#B85229')))
          ],
        )),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            maxLines: 5,
            keyboardType: TextInputType.streetAddress,
            // obscureText: true,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, top: 15),
                border: InputBorder.none,
                hintText: 'Your Address'),
          ),
        ),
      ],
    );
  }

  Widget _Yourcatelog() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Your catalog'),
        SizedBox(
          height: 10,
        ),
        Container(
          // height: 78,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            keyboardType: TextInputType.streetAddress,
            // obscureText: true,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                border: InputBorder.none,
                hintText: 'Your type ie. designer/seller'),
          ),
        ),
      ],
    );
  }

  Widget _Intro() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Introduce yourself'),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 98,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            textAlign: TextAlign.start,

            // obscureText: true,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, top: 15),
                border: InputBorder.none,
                hintMaxLines: 5,
                hintStyle: TextStyle(),
                hintText:
                    "I'm a room designer , good at decorate for bed room and some area if you need"),
          ),
        ),
      ],
    );
  }

  Widget _Registerbutton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(
              'Register',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            CircleAvatar(
                backgroundColor: getColorFromHex('#B85229'),
                radius: 30,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/homedesigner');
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Colors.white,
                    )))
          ],
        ),
      ],
    );
  }

  bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  Widget _Checkbox() {
    return Row(
      children: [
        Checkbox(value: rememberMe, onChanged: _onRememberMeChanged),
        Flexible(
          child: Text('I agree to provide the requested information.',style: TextStyle(fontSize: 12),),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Register',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: getColorFromHex("#FFFFFF"),

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 40),
          children: [
            _Profileimage(),
            _Namefield(),
            SizedBox(
              height: 30,
            ),
            _Genderandbirthday(),
            SizedBox(
              height: 30,
            ),
            _Usernamefield(),
            SizedBox(
              height: 30,
            ),
            _Password(),
            SizedBox(
              height: 30,
            ),
            _Email(),
            SizedBox(
              height: 30,
            ),
            _Phonenumber(),
            SizedBox(
              height: 30,
            ),
            _Promptpay(),
            SizedBox(
              height: 30,
            ),
            _setlocation(),
            SizedBox(
              height: 30,
            ),
            _Otheraddress(),
            SizedBox(
              height: 30,
            ),
            _Yourcatelog(),
            SizedBox(
              height: 30,
            ),
            _Intro(),
            SizedBox(
              height: 30,
            ),
            _Checkbox(),
            SizedBox(
              height: 30,
            ),
            _Registerbutton(),
          ],
        ),
      ),
    );
  }
}
