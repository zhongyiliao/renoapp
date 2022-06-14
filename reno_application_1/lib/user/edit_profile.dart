import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';

class Edit_profile extends StatefulWidget {
  const Edit_profile({Key key}) : super(key: key);

  @override
  State<Edit_profile> createState() => _Edit_profileState();
}

class _Edit_profileState extends State<Edit_profile> {
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

  Widget _Savebutton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(
              'Save',
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
                    onPressed: () {},
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Title'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: getColorFromHex("#FFFFFF"),

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 40),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Edit Information',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
            _Email(),
            SizedBox(
              height: 30,
            ),
            _Phonenumber(),
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
            _Savebutton(),
          ],
        ),
      ),
    );
  }
}
