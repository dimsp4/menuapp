import 'package:flutter/material.dart';

class ButtonAs extends StatelessWidget {
  const ButtonAs({
    Key? key,
    required this.descriptionButton,
    required this.buttonText,
    required this.route,
    required this.verticalPadding,
  }) : super(key: key);

  final String descriptionButton;
  final String buttonText;
  final String route;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            descriptionButton,
            style: TextStyle(
              color: Colors.black.withOpacity(0.25),
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffED93DF), Color(0xffDDBBD6)],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(route);
              },
              child: Text(
                buttonText,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(
                  // horizontal: 135,
                  vertical: verticalPadding,
                ),
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
