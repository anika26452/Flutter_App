import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/splash_screen.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());


/*
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'LoginActivity',
    routes: {
      'LoginActivity' : (context)=>MyLogin(),
      'MenuActivity' : (context)=>MyMenuList()
    },
  ));
}
*/



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplaseScreen(),
    );
  }
}



/* SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Couples"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.menu))
            ],
            leading: Icon(Icons.message),
          ),
          body: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.girl),
                        SizedBox(height: 10,),
                        Text("Anika"),
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Icon(Icons.boy),
                        SizedBox(height: 10,),
                        Text("Shupto"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Suma"),
                    SizedBox(width: 50,),
                    Text("Shobuj"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Mimun"),
                    SizedBox(width: 50,),
                    Text("Orko"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Neela"),
                    SizedBox(width: 50,),
                    Text("Didn't born yet"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Pinky"),
                    SizedBox(width: 50,),
                    Text("Shuvro"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Trisha"),
                    SizedBox(width: 50,),
                    Text("He is pom Ghana"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Parveen"),
                    SizedBox(width: 50,),
                    Text("Shagor"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Monisha"),
                    SizedBox(width: 50,),
                    Text("Shifat"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Mou"),
                    SizedBox(width: 50,),
                    Text("Whole BTS Army"),
                  ],
                ),
              ]
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add_a_photo),
            onPressed: () => {},
          ),
          ),
        ),*/