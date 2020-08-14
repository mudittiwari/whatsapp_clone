import 'package:flutter/material.dart';

Widget callscreen(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {},
                splashColor: Colors.teal[200],
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                  child: ListTile(
                      leading: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/first.jpg'),
                          height: 70.0,
                          width: 60.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        "Mudit",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Transform.rotate(
                            angle: -19.5,
                            child: Icon(
                              Icons.arrow_forward,
                              size: 15.0,
                            ),
                          ),
                          Text("Yesterday, 11:25 PM"),
                        ],
                      ),
                      trailing: IconButton(
                          icon: Icon(Icons.call),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {})),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - (70 + 16.0),
                    child: Divider(
                      height: 0.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
