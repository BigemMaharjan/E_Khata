// ignore_for_file: prefer_const_constructors

import 'package:e_khata/config/routes/routes.dart';
import 'package:e_khata/models/http.dart';
import 'package:e_khata/models/login_request.dart';
import 'package:e_khata/widgets/text_form_fields.dart';
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  moveToHome(BuildContext context) async {
    Http().login(
        loginRequest: LoginRequest(username: "asd", password: "asd1234"));
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[300],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     labelText: "Username",
                      //     hintText: "Enter Username",
                      //   ),
                      //   validator: (value) {
                      //     if (value!.isEmpty) {
                      //       return "Username is Empty";
                      //     }
                      //     return null;
                      //   },
                      //   onChanged: (value) {
                      //     name = value;
                      //     setState(() {});
                      //   },
                      // ),
                      TextFormFields(
                        controller: _usernameController,
                        data: Icons.person,
                        txtHint: "Username",
                        obsecure: false,
                      ),
                      TextFormFields(
                        controller: _passwordController,
                        data: Icons.password,
                        txtHint: "Password",
                        obsecure: true,
                      ),
                      // TextFormField(
                      //   obscureText: true,
                      //   decoration: InputDecoration(
                      //     labelText: "Password",
                      //     hintText: "Enter Password",
                      //   ),
                      //   validator: (value) {
                      //     if (value!.isEmpty) {
                      //       return "Password is Empty";
                      //     } else if (value.length < 6) {
                      //       return "Password should be atleast 6 letters";
                      //     }
                      //     return null;
                      //   },
                      // ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: Colors.purple[400],
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do not have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.registerRoute);
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
