import 'package:flutter/material.dart';
import 'package:mcommerce/screen/register/components/text_field_hp_container.dart';

class RoundedInputFieldHp extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldHp({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldHpContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.green,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
