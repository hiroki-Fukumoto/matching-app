import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordForm extends StatelessWidget {
  final bool isVisible;
  final String? Function(String?)? validateText;
  final ValueChanged<String> onChanged;
  final GestureTapCallback onPressed;

  const PasswordForm(
      {Key? key,
      required this.isVisible,
      this.validateText,
      required this.onChanged,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validateText,
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              onPressed();
            },
          ),
          filled: false,
          hintText: 'パスワード'),
      onChanged: (text) {
        onChanged(text);
      },
      obscureText: isVisible,
    );
  }
}
