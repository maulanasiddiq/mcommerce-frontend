import 'package:flutter/material.dart';
import 'package:mcommerce/screen/register/components/text_field_container.dart';

class RoundedInputFieldNama extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChaged;
  const RoundedInputFieldNama({
    Key key,
    this.hintText,
    this.icon,
    this.onChaged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChaged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.green,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
