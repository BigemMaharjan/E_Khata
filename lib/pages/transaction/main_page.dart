// ignore_for_file: prefer_const_constructors

import 'package:e_khata/config/routes/routes.dart';
import 'package:e_khata/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MainTransactPage extends StatefulWidget {
  const MainTransactPage({Key? key}) : super(key: key);

  @override
  _MainTransactPageState createState() => _MainTransactPageState();
}

class _MainTransactPageState extends State<MainTransactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E_Khata",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 40,
            ),
          ),
          Text(
            "Continue with the Transaction",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.purple[500],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/mainTransaction.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.receiveTransactRoute);
                },
                minWidth: 150,
                height: 60,
                color: Colors.purple[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  "Receive",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.payTransactRoute);
                },
                minWidth: 150,
                height: 60,
                color: Colors.purple[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  "Pay",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
