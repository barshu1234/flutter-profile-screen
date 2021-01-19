import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    ));

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(child: Image.asset("image/a.jpg", fit: BoxFit.cover)),
          DraggableScrollableSheet(
            minChildSize: 0.1,
            initialChildSize: 0.22,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height),
                  color: Colors.pink[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      //for user profile header
                      Container(
                        padding: EdgeInsets.only(left: 32, right: 32, top: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipOval(
                                child: Image.asset(
                                  "image/a.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "About Me:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Roboto",
                                        fontSize: 35,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Name:Binny Maharjan",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Roboto",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Address: pulchowk Lalitpur",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Roboto",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Contact Number: 9823510536",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Roboto",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Email id: batshumhzn@gmail.com",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Roboto",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "My Skills",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Fonts Roboto bold",
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    ":Java",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Fonts Roboto bold",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    ":MySQL",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Fonts Roboto bold",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    ":Flutter",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Fonts Roboto bold",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    ":HTML,CSS and Javascript",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Fonts Roboto bold",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    ":FYP on Lavaral as backend",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Fonts Roboto bold",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
