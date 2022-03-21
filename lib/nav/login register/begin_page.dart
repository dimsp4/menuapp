import 'package:flutter/material.dart';
import 'package:menuapp/components/myappbar.dart';
import 'package:menuapp/components/login%20register/body_begin.dart';

class BeginPage extends StatelessWidget {
  const BeginPage({Key? key}) : super(key: key);

  static const namaRoute = '/begin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(showIcon: false),
      body: Body(),
    );
  }
}
