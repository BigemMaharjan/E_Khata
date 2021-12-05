// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_khata/config/routes/routes.dart';
import 'package:e_khata/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class PayTransactPage extends StatefulWidget {
  const PayTransactPage({Key? key}) : super(key: key);

  @override
  _PayTransactPageState createState() => _PayTransactPageState();
}

class _PayTransactPageState extends State<PayTransactPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E_Khata"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/mainTransaction.png"),
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4),
                BlendMode.dstATop), //For Opactity
            fit: BoxFit.contain,
          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.all(10.0)),
                    Text(
                      "Send Money",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "From",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "From is Empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "To",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "To is Empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      DateTimePicker(
                          // decoration: InputDecoration(
                          initialValue:
                              '', // initialValue or controller.text can be null, empty or a DateTime string otherwise it will throw an error.
                          type: DateTimePickerType.date,
                          decoration: InputDecoration(
                            labelText: 'Select Date',
                            border: OutlineInputBorder(),
                          ),
                          firstDate: DateTime(1995),
                          lastDate: DateTime.now().add(Duration(
                              days:
                                  365)), // This will add one year from current date
                          // Validating
                          validator: (value) {
                            return null;
                          },
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              setState(() {});
                            }
                          },
                          // We can also use onSaved
                          onSaved: (value) {
                            if (value!.isNotEmpty) {}
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Item Name",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Item Name is Empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Item Rate",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Item Rate is Empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Quantity",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Quantity is Empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Total",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Total is Empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Money Received",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Money Received is Empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Money Due",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Money Due is Empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Change",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Change is Empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Net Amount",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Net Amount is Empty";
                            }
                            return null;
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: InkWell(
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        }
                      },
                      color: Colors.purple[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Pay",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
