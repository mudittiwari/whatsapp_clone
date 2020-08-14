import 'dart:math';
import 'package:flutter/material.dart';

class chatscreen extends StatefulWidget {
  @override
  _chatscreenState createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  FloatingActionButton finalbutton = FloatingActionButton(
    elevation: 1.0,
    onPressed: () {},
    child: Icon(Icons.mic),
    backgroundColor: Colors.grey,
  );
  Expanded iconfirstrow = Expanded(
    child: Row(
      children: <Widget>[
        Transform.rotate(
          angle: 5 * pi / 4,
          child: InkWell(
            borderRadius: BorderRadius.circular(19.0),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                Icons.attachment,
                color: Colors.grey,
              ),
            ),
            splashColor: Colors.grey,
            onTap: () {
              print("mudit tiwari");
            },
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(19.0),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          ),
          splashColor: Colors.grey,
          onTap: () {
            print("mudit tiwari");
          },
        ),
      ],
    ),
  );
  Widget leftchat() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
          ),
          constraints: BoxConstraints(maxWidth: 250, minWidth: 30),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    constraints: BoxConstraints(maxWidth: 250, minWidth: 30),
                    child: Text("hello how are you hope you are good")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("9:30AM"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget rightchat() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.green[100],
          ),
          constraints: BoxConstraints(maxWidth: 250, minWidth: 20),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(maxWidth: 250, minWidth: 20),
                  child: Text(
                      "hello how are you i am good what are you doing how was your day today"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "9:30AM",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.check,
                      size: 15.0,
                      color: Colors.grey,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: -10.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 0.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20.0),
                          splashColor: Colors.grey,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.arrow_back),
                                ClipOval(
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/first.jpg"),
                                    height: 35.0,
                                    width: 35.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: AppBar().preferredSize.height,
                            // width: double.infinity,
                            child: InkWell(
                              highlightColor: Colors.grey,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Mudit tiwari")),
                              onTap: () {
                                print("hello world");
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 44.0,
                        width: 44.0,
                        child: Tooltip(
                          message: "video call",
                          child: InkWell(
                            borderRadius: BorderRadius.circular(22.0),
                            onTap: () {},
                            splashColor: Colors.grey,
                            child: Icon(Icons.videocam),
                          ),
                        ),
                      ),
                      Container(
                        height: 44.0,
                        width: 44.0,
                        child: Tooltip(
                          message: "voice call",
                          child: InkWell(
                            borderRadius: BorderRadius.circular(22.0),
                            onTap: () {},
                            splashColor: Colors.grey,
                            child: Icon(Icons.add_call),
                          ),
                        ),
                      ),
                      Container(
                        height: 44.0,
                        width: 44.0,
                        child: Tooltip(
                          message: "more options",
                          child: InkWell(
                            borderRadius: BorderRadius.circular(22.0),
                            onTap: () {},
                            splashColor: Colors.grey,
                            child: Icon(
                              Icons.more_vert,
                              size: 25.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Scrollbar(
              child: ListView(
                reverse: true,
                children: <Widget>[
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                  rightchat(),
                  leftchat(),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(
                        children: <Widget>[
                          InkWell(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.insert_emoticon,
                                color: Colors.grey,
                              ),
                            ),
                            onTap: () {
                              print("mudit tiwari");
                            },
                            splashColor: Colors.grey,
                          ),
                          SizedBox(
                            child: TextField(
                              autocorrect: false,
                              onChanged: (value) {
                                setState(() {
                                  finalbutton = FloatingActionButton(
                                    elevation: 1.0,
                                    onPressed: () {},
                                    child: Icon(Icons.send),
                                    backgroundColor: Colors.grey,
                                  );
                                  iconfirstrow = Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Transform.rotate(
                                          angle: 5 * pi / 4,
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(19.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Icon(
                                                Icons.attachment,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            splashColor: Colors.grey,
                                            onTap: () {
                                              print("mudit tiwari");
                                            },
                                          ),
                                        ),
                                        // InkWell(
                                        //   borderRadius:
                                        //       BorderRadius.circular(19.0),
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.all(4.0),
                                        //     child: Icon(
                                        //       Icons.camera_alt,
                                        //       color: Colors.grey,
                                        //     ),
                                        //   ),
                                        //   splashColor: Colors.grey,
                                        //   onTap: () {
                                        //     print("mudit tiwari");
                                        //   },
                                        // ),
                                      ],
                                    ),
                                  );
                                });
                              },
                              cursorColor: Colors.grey,
                              style: TextStyle(
                                fontSize: 19.0,
                              ),
                              decoration: InputDecoration.collapsed(
                                hintText: "Type a message",
                                border: InputBorder.none,
                              ),
                            ),
                            width: 180.0,
                          ),
                          iconfirstrow
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 4.0),
                  child: finalbutton,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
