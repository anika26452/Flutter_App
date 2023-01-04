import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_app/Controller/synccontroller.dart';

class providertest extends StatefulWidget {
  const providertest({super.key});

  @override
  State<providertest> createState() => _providertestState();
}

class _providertestState extends State<providertest> {
  int value = 20000;

  increment() {
    setState(() {
      value = value + 1000;
    });
  }

  decrement() {
    setState(() {
      value = value - 2000;
    });
  }

  final SyncController controller = Get.put(SyncController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            value.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
            Text(
              controller.valueuserid.text.toString() +" = "+ controller.valuepasswordid.text.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: Text("Increment"),
              ),
              SizedBox(width: 50,),
              ElevatedButton(
                onPressed: () {
                  decrement();
                },
                child: Text("Decrement"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
