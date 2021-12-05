// ignore_for_file: prefer_const_constructors

import 'package:e_khata/config/routes/routes.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
            ),
            Text(
              "Halo!! Have a good day.",
              style: TextStyle(
                color: Colors.purple[300],
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "This app about calculating your money.",
              style: TextStyle(
                color: Colors.purple[300],
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/landing.png",
              fit: BoxFit.cover,
              height: 100.0,
            ),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              color: Colors.purple[400],
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.registerRoute);
              },
              color: Colors.purple[400],
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Text(
                "Register",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
