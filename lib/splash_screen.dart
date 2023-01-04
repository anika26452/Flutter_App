import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_first_flutter_app/login.dart';
import 'package:get/get.dart';

class SplaseScreen extends StatefulWidget {
  const SplaseScreen({super.key});

  @override
  State<SplaseScreen> createState() => _SplaseScreenState();
}

class _SplaseScreenState extends State<SplaseScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), (() => {
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyLogin(),))
      Get.off(() => MyLogin())     //(() = >MyLogin())
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(100)),
            CircleAvatar(
              backgroundImage: AssetImage("./assets/silco_logo.png"),
              backgroundColor: Colors.white,
              radius: 100,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Welcome to Silco Pharmaceuticals  Ltd...",
              style: TextStyle(
                  color: Color.fromARGB(255, 32, 69, 133),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )),
    );
  }
}