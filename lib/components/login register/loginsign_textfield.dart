import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusColor: Colors.grey,
        hoverColor: Colors.grey,
        hintText: hintText,
        icon: Icon(Icons.lock),
        suffixIcon: TextButton(
          onPressed: () {},
          child: Icon(Icons.visibility),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.grey),
          ),
        ),
      ),
    );
  }
}

class TextFieldNormal extends StatelessWidget {
  const TextFieldNormal({
    Key? key,
    required this.hintText,
    required this.icon,
  }) : super(key: key);

  final String hintText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        icon: icon,
      ),
    );
  }
}
