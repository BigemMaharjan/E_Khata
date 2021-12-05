// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'package:e_khata/config/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://cdn.wallpapersafari.com/75/97/Fszdri.jpg";
    return Drawer(
      child: Container(
        color: Colors.purple[300],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.purple[300]),
                accountName: Text(
                  "SB",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                accountEmail: Text(
                  "SB@gmail.com",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                  size: 35,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, MyRoutes.profileRoute);
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                  size: 35,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.mainTransactRoute);
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.money_euro_circle,
                  color: Colors.white,
                  size: 35,
                ),
                title: Text(
                  "Transaction",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.balanceSheetRoute);
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.money_dollar_circle,
                  color: Colors.white,
                  size: 35,
                ),
                title: Text(
                  "Balance Sheet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
