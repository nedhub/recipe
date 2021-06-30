import 'package:flutter/material.dart';

class food extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;
  const food({Key? key, this.heroTag, this.foodName, this.foodPrice})
      : super(key: key);

  @override
  _foodState createState() => _foodState();
}

class _foodState extends State<food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
    );
  }
}
