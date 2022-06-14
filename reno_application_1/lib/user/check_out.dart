import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';

class Check_out extends StatefulWidget {
  const Check_out({Key key}) : super(key: key);

  @override
  State<Check_out> createState() => _Check_outState();
}

class _Check_outState extends State<Check_out> {
  Widget buildCard() => Container(
        decoration: BoxDecoration(
            color: getColorFromHex('#F7F7F7'),
            borderRadius: BorderRadius.circular(10)),
        // width: 310,
        height: 180,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Mark lee')
                  ],
                ),
              ),
              Divider(
                // height: 5,
                color: getColorFromHex("#E1E1E1"),
                thickness: 0.5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                child: Row(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/chair_cart.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('LISABO Table'),
                        // Spacer(),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '\฿ 150.0',
                          style: TextStyle(color: getColorFromHex("#B1B1B1")),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('x1'),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          'white',
                          style: TextStyle(color: getColorFromHex("#B0B0B0")),
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                // height: 5,
                color: getColorFromHex("#E1E1E1"),
                thickness: 0.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  children: [
                    Text('Delivery'),
                    Spacer(),
                    Text(
                      '\฿ 8000.0',
                      style: TextStyle(color: getColorFromHex("#868686")),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: getColorFromHex("#FFFFFF"),
      
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Shipping Address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'Edit',
                      style: TextStyle(color: getColorFromHex("#C9C9C9")),
                    )
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Row(
                  children: [
                    Text(
                      'Johnny Lee',
                      style: TextStyle(color: getColorFromHex("#7D7D7D")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '64 Iamaya Meaung, Chonburi',
                      style: TextStyle(color: getColorFromHex("#7D7D7D")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '54400',
                      style: TextStyle(color: getColorFromHex("#7D7D7D")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Tel: 0231555',
                      style: TextStyle(color: getColorFromHex("#7D7D7D")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 195),
                    // height: MediaQuery.of(context).size.height * 0.5,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ListView.separated(
                      // padding: EdgeInsets.symmetric(horizontal: 15),
                      scrollDirection: Axis.vertical,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (context, _) => SizedBox(
                        height: 10,
                      ),
                      itemBuilder: (context, index) => buildCard(),
                    ),
                  ),
                ),
              ],
            ),
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
                          // Navigator.of(context)
                          //     .pushReplacementNamed('/bottombaruser');
                        },
                        child: Text(
                          'Payment',
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
