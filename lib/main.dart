import 'package:flutter/material.dart';
import 'package:menuapp/nav/login%20register/begin_page.dart';
import 'package:menuapp/nav/main%20nav/homestate.dart';
import 'package:menuapp/nav/login%20register/login.dart';
import 'package:menuapp/nav/login%20register/sign_up.dart';
import 'package:menuapp/nav/main%20nav/menu_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'SFPro'),
        home: BeginPage(),
        initialRoute: BeginPage.namaRoute,
        routes: {
          BeginPage.namaRoute: (context) => BeginPage(),
          HomePage.namaRoute: (context) => HomePage(),
          Login.namaRoute: (context) => Login(),
          SignUp.namaRoute: (context) => SignUp(),
          MenuList.namaRoute: (context) => MenuList()
        });
  }
}
