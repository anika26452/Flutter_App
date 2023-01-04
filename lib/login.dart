import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_first_flutter_app/Controller/synccontroller.dart';
import 'package:get/get.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  final SyncController controller = Get.put(SyncController());

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

  bool _validateid = false, _validatepass = false, _passwordVisible = false;

  Map user = {"userid": "", "password": ""};

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                right: 15,
                left: 15),
            child: Column(children: [
              CircleAvatar(
                backgroundImage: AssetImage("./assets/somatec_logo.png"),
                backgroundColor: Colors.white,
                radius: 100,
              ),
              SizedBox(height: 20,),
              TextField(
                controller: controller.valueuserid,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Enter Username/UserID',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    errorText: _validateid ? "Please enter user id" : null),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller.valuepasswordid,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    errorText:
                        _validatepass ? "Please enter your passsword" : null,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 27,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  CircleAvatar(
                    radius: 20,
                    //backgroundColor: Color(0xff4c505b),
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          controller.valueuserid.text == "" || controller.valueuserid.text.isEmpty
                              ? _validateid = true
                              : _validateid = false;
                          controller.valuepasswordid.text == "" || controller.valuepasswordid.text.isEmpty
                              ? _validatepass = true
                              : _validatepass = false;
                          if (!_validatepass && !_validateid) {
                            //ShowToast("Signed In");
                            var userid = controller.valueuserid.text;
                            var userpass = controller.valuepasswordid.text;
                            print("Please check your id & password :" +userid +" = " +userpass);
                            user['userid'] = userid;
                            user['password'] = userpass;
                            controller.getuser(user);
                            //print(controller.message);

                          }
                        });
                      },
                      icon: Icon(Icons.arrow_forward),
                    ),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}