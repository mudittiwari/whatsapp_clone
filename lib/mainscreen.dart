import 'package:flutter/material.dart';
import 'package:whatsapp_clone/callscreen.dart';
import 'package:whatsapp_clone/statusscreen.dart';
import 'chatscreen.dart';

class mainscreen extends StatefulWidget {
  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> with TickerProviderStateMixin {
  TabController tb;
  Column col = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: FloatingActionButton(
          heroTag: "btn2",
          backgroundColor: Colors.orange,
          child: Icon(Icons.message),
          onPressed: () {},
        ),
      ),
    ],
  );
  // Icon fabiconone = Icon(Icons.message, size: 35.0, color: Colors.white);
  // Icon fabicontwo = Icon(Icons.arrow_downward, size: 0.0, color: Colors.white);
  @override
  void initState() {
    super.initState();
    tb = TabController(length: 4, vsync: this, initialIndex: 1);
    tb.addListener(() {
      setState(() {
        switch (tb.index) {
          case 1:
            print(tb.index);
            col = Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.message),
                    onPressed: () {},
                  ),
                ),
              ],
            );
            break;
          case 2:
            col = Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: FloatingActionButton(
                    heroTag: "btn1",
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.arrow_downward),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: FloatingActionButton(
                    heroTag: "btn2",
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.camera_alt),
                    onPressed: () {},
                  ),
                ),
              ],
            );
            print(tb.index);
            break;
          case 3:
            print(tb.index);
            col = Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.add_call),
                    onPressed: () {},
                  ),
                ),
              ],
            );
            break;
        }
      });
    });
  }

  Widget chatwidget() {
    return Material(
      shadowColor: Colors.black,
      child: InkWell(
        splashColor: Colors.grey[200],
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => chatscreen(),
              ));
        },
        onLongPress: () {
          print("mudit tiwari11");
        },
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12.0, right: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: ClipOval(
                    child: Image(
                      width: 70.0,
                      height: 70.0,
                      image: AssetImage("assets/images/first.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 0, top: 10.0, right: 10.0, left: 10.0),
                    child: Container(
                      // color: Colors.black,
                      alignment: Alignment.topLeft,
                      // color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 13.0),
                                child: Text(
                                  "Mudit Tiwari",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 13.0),
                                child: Text("10:48 AM"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("hello how are you doing....hope you...."),
                              // Icon(Icons.volume_mute),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 27.0),
                            child: Divider(
                              height: 0.0,
                              thickness: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "WhatsApp",
          style: TextStyle(fontSize: 22.0),
        ),
        bottom: TabBar(
          tabs: <Widget>[
            IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {},
            ),
            Text("CHATS"),
            Text("STATUS"),
            Text("CALLS"),
          ],
          labelStyle: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
          controller: tb,
        ),
        actions: <Widget>[
          SizedBox(
            width: 50.0,
            child: InkWell(
              borderRadius: BorderRadius.circular(25.0),
              child: Icon(
                Icons.search,
                size: 27.0,
              ),
              onTap: () {},
            ),
          ),
          SizedBox(
            width: 50.0,
            // child: InkWell(
            //   child: Icon(
            //     Icons.more_vert,
            //     size: 27.0,
            //   ),
            //   onTap: () {},
            // ),
            child: PopupMenuButton(
              tooltip: "menu",
              padding: EdgeInsets.all(0.0),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text("New group"),
                    value: "ng",
                  ),
                  PopupMenuItem(
                    child: Text("New brodcast"),
                    value: "nb",
                  ),
                  PopupMenuItem(
                    child: Text("WhatsApp web"),
                    value: "ww",
                  ),
                  PopupMenuItem(
                    child: Text("Starred messages"),
                    value: "sm",
                  ),
                  PopupMenuItem(
                    child: Text("Setting"),
                    value: "sg",
                  )
                ];
              },
            ),
          ),
        ],
      ),
      body: TabBarView(
        children: <Widget>[
          Text("camera"),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            child: Scrollbar(
              child: ListView(
                children: <Widget>[
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                  chatwidget(),
                ],
              ),
            ),
          ),
          statusscreen(context),
          callscreen(context),
        ],
        controller: tb,
      ),
      //
      floatingActionButton: col,
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: <Widget>[
      //     FloatingActionButton(
      //       heroTag: "btn1",
      //       child: fabicontwo,
      //       onPressed: () {},
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(top: 10.0),
      //       child: FloatingActionButton(
      //         heroTag: "btn2",
      //         backgroundColor: Colors.orange,
      //         child: fabiconone,
      //         onPressed: () {},
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
