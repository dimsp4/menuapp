import 'package:flutter/material.dart';

AppBar myAppBar({
  bool showIcon = true,
}) {
  return AppBar(
    backgroundColor: Color(0xffE0A0D2),
    leading: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: showIcon ? Icon(Icons.ac_unit) : SizedBox.shrink(),
    ),
    elevation: 0,
  );
}

double sizeWitoutAppbar(BuildContext context) {
  final size = MediaQuery.of(context).size.height;
  final bodySize = size -
      myAppBar().preferredSize.height -
      MediaQuery.of(context).padding.top;

  return bodySize;
}

double sizeAppbar() {
  return myAppBar().preferredSize.height;
}
