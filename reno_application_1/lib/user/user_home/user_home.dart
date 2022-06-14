import 'package:flutter/material.dart';
import 'package:reno_application_1/color.dart';
import 'package:reno_application_1/user/user_home/photos_staggered_gridview.dart';

class User_home extends StatefulWidget {
  const User_home({Key key}) : super(key: key);

  @override
  State<User_home> createState() => _User_homeState();
}

class _User_homeState extends State<User_home> {
  Widget buildAvatar() => Container(
        width: 80,
        // color: Colors.red,
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/living_room.png'),
              // backgroundImage: NetworkImage(
              //     'https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png'),
              radius: 38,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Living room',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 40,
            child: TextField(
              autocorrect: true,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6)),
                                height: 180,
                                width: 270,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: Icon(Icons.close),
                                            iconSize: 15,
                                          ),
                                        ],
                                      ),
                                      Text('Filter'),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            ImageIcon(
                                              AssetImage(
                                                  'assets/images/filter_all.png'),
                                              size: 25,
                                              color: Colors.yellow,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text('All')
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.my_location,
                                              color: getColorFromHex('#B85229'),
                                              size: 22,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text('Nearby')
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // color: Colors.amber,
                              ),
                            );
                          });
                    },
                    icon: ImageIcon(
                      AssetImage("assets/images/sort.png"),
                      color: getColorFromHex('#B85229'),
                      size: 100,
                    ),
                  ),
                  isCollapsed: true,
                  // focusedBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Search',
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ))),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mycartuser');
              },
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
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 120,
                  // width: 500,
                  // color: Colors.blue,
                  child: ListView.separated(
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) => buildAvatar(),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Newsfeed',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.grey),
                    ),
                    
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/viewalluser');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 15,
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: CircleBorder(),
                        // padding: EdgeInsets.all(24),
                        fixedSize: Size(1, 5),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                PhotosStaggerdGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
