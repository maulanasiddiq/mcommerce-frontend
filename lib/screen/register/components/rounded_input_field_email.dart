import 'package:flutter/material.dart';
import 'package:mcommerce/screen/register/components/text_field_email_container.dart';

class RoundedInputFieldEmail extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldEmail({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldEmailContainer(
      child: TextField(
        onChanged: onChanged,
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
