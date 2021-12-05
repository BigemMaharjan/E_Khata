// ignore_for_file: prefer_const_constructors

import 'package:e_khata/pages/balance_sheet.dart';
import 'package:e_khata/pages/home_page.dart';
import 'package:e_khata/pages/landing_page.dart';
import 'package:e_khata/pages/registration_page.dart';
import 'package:e_khata/pages/login_page.dart';
import 'package:e_khata/pages/transaction/main_page.dart';
import 'package:e_khata/pages/transaction/pay_page.dart';
import 'package:e_khata/pages/transaction/receive_page.dart';
import 'package:e_khata/config/routes/routes.dart';
import 'package:e_khata/config/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.dark,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      // darkTheme: MyTheme.darkTheme(context),

      // home: Splash(),

      initialRoute: MyRoutes.balanceSheetRoute,
      routes: {
        "/": (context) => LandingPage(),
        MyRoutes.registerRoute: (context) => RegistrationPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.mainTransactRoute: (context) => MainTransactPage(),
        MyRoutes.payTransactRoute: (context) => PayTransactPage(),
        MyRoutes.receiveTransactRoute: (context) => ReceiveTransactPage(),
        MyRoutes.balanceSheetRoute: (context) => BalanceSheetPage(),
      },
    );
  }
}

// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);

//   @override
//   _SplashState createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: const [Colors.grey, Colors.black87],
//             begin: FractionalOffset(0.0, 1.0),
//             end: FractionalOffset(0.0, 1.0),
//             tileMode: TileMode.repeated,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset("assets/images/dashboard.png"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
