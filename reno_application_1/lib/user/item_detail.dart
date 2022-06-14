import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';

class Item_detail extends StatefulWidget {
  const Item_detail({Key key}) : super(key: key);

  @override
  State<Item_detail> createState() => _Item_detailState();
}

class _Item_detailState extends State<Item_detail> {
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
          icon: Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(color: Colors.black),
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

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Carousel(
                      boxFit: BoxFit.fill,
                      autoplay: false,
                      animationCurve: Curves.fastOutSlowIn,
                      animationDuration: Duration(milliseconds: 1000),
                      dotSize: 6.0,
                      dotIncreasedColor: Color(0xFFFF335C),
                      dotBgColor: Colors.transparent,
                      dotPosition: DotPosition.bottomCenter,
                      dotVerticalPadding: 10.0,
                      showIndicator: true,
                      indicatorBgPadding: 7.0,
                      images: [
                        AssetImage('assets/images/chair.png'),
                        AssetImage('assets/images/sofa2.png'),
                        AssetImage('assets/images/chair.png'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Gamming Chair',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    '\$ 150',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/sellerprofile');
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/user.png"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Mark lee')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: Text(
                  "Now that I've owned this chair for more than two years,I've found it to be an excellent entry-level gaming seat that just happens to double as a great work-from-home chair. Here's why the Homall gaming chair may be wortha spot in your home office — even if you're spending moretime with spreadsheets than Call of Duty.",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Spacer(),
              Row(
                children: [Text('Detail')],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Status:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Good', style: TextStyle(color: Colors.grey))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Amount:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('2', style: TextStyle(color: Colors.grey))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [Text('Pick up')],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text('MaeFahLuang , 7-11 M square',
                        style: TextStyle(color: Colors.grey)),
                  )
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/chatboxuser');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(AssetImage("assets/images/message.png")),
                            SizedBox(
                              width: 15,
                            ),
                            Text('Chat')
                          ],
                        ),
                        textColor: Colors.grey,
                        color: Colors.white,
                        // padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                          child: const Text('Add to cart'),
                          textColor: Colors.white,
                          color: getColorFromHex('#B85229'),
                          // padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
