// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_khata/config/routes/routes.dart';
import 'package:e_khata/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "E_Khata",
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/dashboard.png"),
                alignment: Alignment.topCenter,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(
                      bottom: 100,
                    ),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              "https://cdn.wallpapersafari.com/75/97/Fszdri.jpg"),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "SB",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            Text(
                              "SB@gmail.com",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: true,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            shadowColor: Colors.purple,
                            elevation: 10.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  CupertinoIcons.home,
                                  color: Colors.purple,
                                  size: 50.0,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.purple),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            shadowColor: Colors.purple,
                            elevation: 10.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  CupertinoIcons.profile_circled,
                                  color: Colors.purple,
                                  size: 50.0,
                                ),
                                Text(
                                  "Profile",
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.purple),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, MyRoutes.mainTransactRoute);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            shadowColor: Colors.purple,
                            elevation: 10.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  CupertinoIcons.money_euro_circle,
                                  color: Colors.purple,
                                  size: 50.0,
                                ),
                                Text(
                                  "Transaction",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.purple),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, MyRoutes.balanceSheetRoute);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            shadowColor: Colors.purple,
                            elevation: 10.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  CupertinoIcons.money_dollar_circle,
                                  color: Colors.purple,
                                  size: 50.0,
                                ),
                                Text(
                                  "Balance \n Sheet",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.purple),
                                ),
                              ],
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
        ],
      ),
      drawer: const MyDrawer(),
    );
  }
}
