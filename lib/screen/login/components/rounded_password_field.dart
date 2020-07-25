import 'package:flutter/material.dart';
import 'package:mcommerce/screen/login/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChaged;
  const RoundedPasswordField({
    Key key,
    this.onChaged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChaged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.green,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.green,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
