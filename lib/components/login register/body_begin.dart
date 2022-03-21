import 'package:flutter/material.dart';
import 'package:menuapp/components/login%20register/costum_button_home.dart';
import 'package:menuapp/components/login%20register/header_img.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HeaderImg(
          height: 280,
          image: 'assets/images/rafiki.png',
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "Menu App",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "The most simple way to order food",
                    style: TextStyle(
                      fontSize: 18.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              ButtonAs(
                descriptionButton: "New to this App?",
                buttonText: "Sign Up",
                route: '/signuppage',
                verticalPadding: 25,
              ),
              ButtonAs(
                descriptionButton: "Joined us before?",
                buttonText: "Login",
                route: '/loginpage',
                verticalPadding: 25,
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 45))
      ],
    );
  }
}
