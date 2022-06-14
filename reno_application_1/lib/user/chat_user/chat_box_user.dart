import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:reno_application_1/color.dart';
import 'package:reno_application_1/user/message.dart';

class chat_box_user extends StatefulWidget {
  const chat_box_user({Key key}) : super(key: key);

  @override
  State<chat_box_user> createState() => _chat_box_userState();
}

class _chat_box_userState extends State<chat_box_user> {
  List<Message> messages = [
    Message(
        text: 'Hello',
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: 'Hello',
        date: DateTime.now().subtract(Duration(minutes: 5, days: 1)),
        isSentByMe: true),
  ].reversed.toList();

  Widget _Textinputarea() {
    return Container(
      height: 80,
      padding: EdgeInsets.only(bottom: 5),
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 20),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                  size: 35,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.image,
                  size: 34,
                )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                autocorrect: true,
                // textInputAction: TextInputAction.done,
                // controller: _controller,
                controller: myController,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          {
                            final message = Message(
                              text: myController.text,
                              date: DateTime.now(),
                              isSentByMe: true,
                            );
                            setState(() => messages.add(message));
                          }
                        },
                        icon: Icon(Icons.send)),
                    contentPadding: EdgeInsets.only(left: 30),
                    hintText: 'Type message',
                    border: UnderlineInputBorder(borderSide: BorderSide.none)),
                // onSubmitted: (text) {
                //   final message = Message(
                //     text: text,
                //     date: DateTime.now(),
                //     isSentByMe: true,
                //   );
                //   setState(() => messages.add(message));
                // },
              ),
            )),
          ],
        ),
      ),
    );
  }

  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  // _controller() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Miss A',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ],
          )),
      backgroundColor: getColorFromHex("#FFFFFF"),

      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              reverse: true,
              order: GroupedListOrder.DESC,
              floatingHeader: true,
              // useStickyGroupSeparators: true,
              padding: const EdgeInsets.all(10),
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 50,
                child: Center(
                  child: Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(DateFormat.yMMMd().format(message.date)),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            ),
          ),
          _Textinputarea(),
        ],
      ),
    );
  }
}
