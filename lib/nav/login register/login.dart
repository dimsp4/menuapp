import 'package:flutter/material.dart';
import 'package:menuapp/components/login%20register/loginsign_textfield.dart';
import 'package:menuapp/components/myappbar.dart';
import 'package:menuapp/components/login%20register/costum_button_home.dart';
import 'package:menuapp/components/login%20register/header_img.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  static const namaRoute = '/loginpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderImg(
              height: 280,
              image: 'assets/images/rafiki2.png',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFieldNormal(
                    hintText: "Email / Username",
                    icon: Icon(Icons.alternate_email),
                  ),
                  PasswordTextField(hintText: "Password"),
                  Column(
                    children: [
                      ButtonAs(
                        descriptionButton: "",
                        buttonText: 'Login',
                        route: '/home',
                        verticalPadding: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("New to Menu App?"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xffD677A4),
                                fontSize: 13,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
