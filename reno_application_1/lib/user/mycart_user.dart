import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:reno_application_1/color.dart';

class Mycart_user extends StatefulWidget {
  const Mycart_user({Key key}) : super(key: key);

  @override
  State<Mycart_user> createState() => _Mycart_userState();
}

class _Mycart_userState extends State<Mycart_user> {
  Widget buildCard() => Container(
        decoration: BoxDecoration(
            color: getColorFromHex('#F7F7F7'),
            borderRadius: BorderRadius.circular(10)),
        // width: 310,
        height: 116,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/chair_cart.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text('Gaming chair'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '\$150.0',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          splashRadius: 18,
                          icon: Icon(
                            Icons.remove_circle,
                            size: 18,
                          )),
                      Text('1'),
                      IconButton(
                          splashRadius: 18,
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            size: 18,
                            color: getColorFromHex('#B85229'),
                          )),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text('Delivery'),
                  Spacer(),
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: ImageIcon(AssetImage("assets/images/delete_icon.png"),
                        color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'My Cart',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: getColorFromHex("#FFFFFF"),

      // bottomNavigationBar: Container(height: 200,color: Colors.black,),
      body: Stack(
        children: [
          Column(
            children: [
              Text('2 items',
                  style: TextStyle(
                    color: getColorFromHex('#D2D2D2'),
                  )),
              SizedBox(
                height: 21,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 195),
                  // height: MediaQuery.of(context).size.height * 0.5,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 20,
                    separatorBuilder: (context, _) => SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) => buildCard(),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Container(
              height: 195,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sub total+ Vat(5%)',
                          style: TextStyle(color: getColorFromHex("#B3B3B3")),
                        ),
                        Spacer(),
                        Text('฿ 157.5'),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(color: getColorFromHex("#B3B3B3")),
                        ),
                        Spacer(),
                        Text('Free'),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      // height: 5,
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Total Price',
                          style: TextStyle(color: getColorFromHex("#B3B3B3")),
                        ),
                        Spacer(),
                        Text(
                          '฿ 157.5',
                          style: TextStyle(
                              color: getColorFromHex('#B85229'), fontSize: 15),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 48,
                      decoration: BoxDecoration(
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10),
                        color: getColorFromHex('#B85229'),
                      ),
                      // color: Colors.black,
                      width: double.infinity,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/checkout');
                        },
                        child: Text(
                          'Check out',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
