import 'package:flutter/material.dart';
import 'package:menuapp/components/login%20register/loginsign_textfield.dart';
import 'package:menuapp/components/myappbar.dart';
import 'package:menuapp/components/login%20register/costum_button_home.dart';
import 'package:menuapp/components/login%20register/header_img.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  static const namaRoute = '/signuppage';

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
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFieldNormal(
                    hintText: "Email",
                    icon: Icon(Icons.alternate_email),
                  ),
                  TextFieldNormal(
                    hintText: "Password",
                    icon: Icon(Icons.person),
                  ),
                  PasswordTextField(hintText: "Password"),
                  PasswordTextField(hintText: "Confirm Password"),
                  Column(
                    children: [
                      ButtonAs(
                        descriptionButton: "",
                        buttonText: 'Create Account',
                        route: '/home',
                        verticalPadding: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Joined us before?"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
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
