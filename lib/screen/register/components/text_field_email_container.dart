import 'package:flutter/material.dart';

class TextFieldEmailContainer extends StatelessWidget {
  final child;
  const TextFieldEmailContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.green[100], borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
