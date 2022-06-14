import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';

class Profile_user extends StatefulWidget {
  @override
  State<Profile_user> createState() => _Profile_userState();
}

class _Profile_userState extends State<Profile_user> {
  Widget _Profileimage() {
    return Container(
      // color: Colors.amber,
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
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
                    icon: InkWell(
                      onTap: () {
                        // Navigator.of(context).pushNamed('/first');
                      },
                      child: ImageIcon(
                        AssetImage("assets/images/profile_edit.png"),
                        color: getColorFromHex('#A8A8A8'),
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Deen Morgan',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '@deen_morgan',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Follower'),
              Text(' 2'),
              Text('  Following'),
              Text(' 3')
            ],
          ),
        ],
      ),
    );
  }

  Widget _Threefuntion() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: getColorFromHex("#FAFAFA"),
          ),
          height: 250,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/editprofile');
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_box,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Edit information',
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/mycatelog');
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_add,
                          color: Colors.brown,
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'My catelog',
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      children: [
                        //  ImageIcon(AssetImage("assets/images/discount.png")),
                        Icon(
                          Icons.money_sharp,
                          color: Colors.brown,
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Your sell orders',
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      children: [
                        //  ImageIcon(AssetImage("assets/images/discount.png")),
                        Icon(
                          Icons.card_giftcard,
                          color: Colors.brown,
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Your buy history',
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _Logout() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: getColorFromHex('#F5F5F5'),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.brown,
                      size: 40,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 15),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
          ),
        ),
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
          children: [
            _Profileimage(),
            _Threefuntion(),
            SizedBox(
              height: 30,
            ),
            _Logout(),
            SizedBox(height: 30,)
            // SizedBox(
            //   height: 60,
            // ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'Version 1.0.0',
            //       style: TextStyle(color: Colors.grey),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
