import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: 5000,
                        height: 300,
                        child: Image.network(
                            "https://images.thrillophilia.com/image/upload/s--6kfJr-kh--/c_fill,h_600,q_auto,w_975/f_auto,fl_strip_profile/v1/images/photos/000/183/282/original/1575443721_bike.png.jpg?1575443721"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                //likes and dislike as well as name and varification
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sudama sahu",
                      style: TextStyle(fontSize: 17),
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    FloatingActionButton(
                      backgroundColor: Color(0xffffc107),
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    FloatingActionButton(
                        backgroundColor: Color(0xffffc107),
                        child: Icon(Icons.thumb_down, color: Colors.grey)),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                Row(children: <Widget>[
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "MUM1234 | Mumbai | Photographer",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 30,
                ),

                //invite frnds and message
                Row(
                  children: <Widget>[
                    FloatingActionButton.extended(
                        backgroundColor: Color(0xffffc107),
                        icon: Icon(
                          Icons.group_add_rounded,
                          color: Colors.black,
                        ),
                        onPressed: null,
                        label: Text(
                          "invite to your trip",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    FloatingActionButton.extended(
                        backgroundColor: Color(0xffffc107),
                        icon: Icon(
                          Icons.message_outlined,
                          color: Colors.black,
                        ),
                        onPressed: null,
                        label: Text(
                          "Message",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "| About Sudama :",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      " Take me anywhere and make me feel special."
                      " places you visit becomes a part of your personality somehow.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 220,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 60,
                child: CircleAvatar(
                  radius: 58,
                  backgroundImage: NetworkImage(
                      "https://3.bp.blogspot.com/-MgweNt7imWY/W8loDgvmRmI/AAAAAAAAKeo/sn10RpoyAOInty4mgjFo_eMOF1XQxeiVgCEwYBhgL/s1600/leh-ladhak.jpg"),
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFffc107),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.90),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            title: Text('HOME'),
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            title: Text('Trips'),
            icon: Icon(Icons.wallet_travel),
          ),
          BottomNavigationBarItem(
            title: Text('Prima'),
            icon: Icon(Icons.landscape),
          ),
          BottomNavigationBarItem(
            title: Text('Notification'),
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            title: Text('Travel'),
            icon: Icon(Icons.directions_run_sharp),
          ),
        ],
      ),
    );
  }
}