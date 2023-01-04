import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_app/login.dart';
import 'package:my_first_flutter_app/provider.dart';

import 'Controller/synccontroller.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {

  final SyncController usercontroller = Get.put(SyncController());

  ShowToast(Text) {
    Fluttertoast.showToast(
        msg: Text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue, // Color(0xff4c505b),
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Color.fromARGB(255, 66, 164, 244),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person, size: 60, color: Color.fromARGB(255, 41, 41, 41),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  usercontroller.employeename,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey[900],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  usercontroller.designation,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 41, 41, 41),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  usercontroller.orgname,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 41, 41, 41),
                                  ),
                                )
                              ]),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              //color: Color.fromARGB(255, 131, 196, 250),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Card(
                      elevation: .5,
                      color: Colors.white,
                      margin: EdgeInsets.all(30),
                      child: InkWell(
                        onTap: () {
                          ShowToast("Sync With ERP");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => providertest()));
                        },
                        splashColor: Color.fromARGB(255, 182, 209, 255),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.sync,
                                size: 50.0,
                                color: Colors.blue,
                              ),
                              Text('Sync With ERP',
                                  style: new TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: Colors.white,
                      margin: EdgeInsets.all(30),
                      child: InkWell(
                        onTap: () {
                          ShowToast("Chemist");
                        },
                        splashColor: Color.fromARGB(255, 182, 209, 255),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.house,
                                size: 70.0,
                                color: Colors.blue,
                              ),
                              Text('Chemists',
                                  style: new TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: Colors.white,
                      margin: EdgeInsets.all(30),
                      child: InkWell(
                        onTap: () {
                          ShowToast("Doctors");
                        },
                        splashColor: Color.fromARGB(255, 182, 209, 255),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.group_rounded,
                                size: 70.0,
                                color: Colors.blue,
                              ),
                              Text('Doctors',
                                  style: new TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: Colors.white,
                      margin: EdgeInsets.all(30),
                      child: InkWell(
                        onTap: () {
                          ShowToast("Products");
                        },
                        splashColor: Color.fromARGB(255, 182, 209, 255),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.list,
                                size: 70.0,
                                color: Colors.blue,
                              ),
                              Text('Products',
                                  style: new TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: Colors.white,
                      margin: EdgeInsets.all(30),
                      child: InkWell(
                        onTap: () {
                          ShowToast("Order list");
                        },
                        splashColor: Color.fromARGB(255, 182, 209, 255),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                size: 70.0,
                                color: Colors.blue,
                              ),
                              Text('Order List',
                                  style: new TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
