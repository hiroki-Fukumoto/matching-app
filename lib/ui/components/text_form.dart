import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String? placeholder;
  final String? Function(String?)? validateText;
  final ValueChanged<String> onChanged;

  const TextForm(
      {Key? key, this.placeholder, this.validateText, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validateText,
      decoration: InputDecoration(filled: false, hintText: placeholder ?? ''),
      onChanged: (text) {
        onChanged(text);
      },
    );
  }
}
