import 'package:flutter/material.dart';
import 'package:mcommerce/screen/register/components/text_field_ulangi_password_container.dart';

class RoundedInputFieldUlangiPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedInputFieldUlangiPassword({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldUlangiPasswordContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Konfirmasi Password",
            icon: Icon(
              Icons.lock,
              color: Colors.green,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: Colors.green,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
