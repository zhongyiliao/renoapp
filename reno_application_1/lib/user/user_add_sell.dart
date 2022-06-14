import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';

class User_add_sell extends StatefulWidget {
  const User_add_sell({Key key}) : super(key: key);

  @override
  State<User_add_sell> createState() => _User_add_sellState();
}

class _User_add_sellState extends State<User_add_sell> {
  bool rememberMe = false;
  bool rememberMe1 = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  void _onRememberMeChanged1(bool newValue1) => setState(() {
        rememberMe1 = newValue1;

        if (rememberMe1) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  Widget _Checkbox1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(value: rememberMe, onChanged: _onRememberMeChanged),
        // Flexible(
        //   child: Text('I agree to provide the requested information.'),
        // ),
        Flexible(
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Pick up at', hintStyle: TextStyle(fontSize: 15)),
          ),
        ),
      ],
    );
  }

  Widget _Checkbox2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(value: rememberMe1, onChanged: _onRememberMeChanged1),
        // Flexible(
        //   child: Text('I agree to provide the requested information.'),
        // ),
        Flexible(
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Price of Delivery',
                hintStyle: TextStyle(fontSize: 15)),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add for Sell',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: getColorFromHex("#FFFFFF"),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(255, 199, 0, 0.05),
                    ),
                    // margin: const EdgeInsets.all(100.0),
                    // padding: EdgeInsets.center,
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_photo_alternate,
                          size: 50,
                          color: getColorFromHex('#B85229'),
                        ),
                        Text('Add photo',
                            style: TextStyle(
                                color: getColorFromHex('#B85229'),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: getColorFromHex('#FBFBFB'),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Name item'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text('Detail item'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '...',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: getColorFromHex('#FBFBFB'),
                    // color: Colors.amber,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Categories'),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios),
                              iconSize: 20,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('Status'),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios),
                              iconSize: 20,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('Select more'),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios),
                              iconSize: 20,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: getColorFromHex('#FBFBFB'),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Amount in stock'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: getColorFromHex('#FBFBFB'),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Delivery options'),
                      ],
                    ),
                    _Checkbox1(),
                    _Checkbox2(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
