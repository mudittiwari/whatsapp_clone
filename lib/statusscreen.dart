import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget statusscreen(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: InkWell(
              highlightColor: Colors.teal[200],
              onTap: () {
                print("mudit tiwari");
              },
              child: ListTile(
                leading: Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/first.jpg'),
                        height: 70.0,
                        width: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.5),
                          color: Colors.orange,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                title: Text(
                  "Mudit Tiwari",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          );
        } else if (index > 0 && index < 5) {
          if (index == 1) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 2.0, bottom: 2.0),
              child: Text(
                "Recent Updates",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          } else {
            return InkWell(
              onTap: () {
                print("mudit tiwari");
              },
              splashColor: Colors.teal[200],
              child: ListTile(
                leading: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/first.jpg'),
                    height: 70.0,
                    width: 60.0,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "Mudit Tiwari",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Today, 1:28 PM"),
              ),
            );
          }
        } else {
          if (index == 5) {
            return Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 2.0),
              child: Text(
                "Viewed Updates",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          } else {
            return InkWell(
              onTap: () {
                print("mudit tiwari");
              },
              splashColor: Colors.teal[200],
              child: ListTile(
                leading: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/first.jpg'),
                    height: 70.0,
                    width: 60.0,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "Mudit Tiwari",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Today, 1:28 PM"),
              ),
            );
          }
        }
      },
    ),
  );
}
