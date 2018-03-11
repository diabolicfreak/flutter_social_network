import 'package:flutter/material.dart';
import 'package:flutter_social_network/page/main_page.dart';

void main() => runApp(new LimeApp());

class LimeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MainPage(),
    );
  }
}

