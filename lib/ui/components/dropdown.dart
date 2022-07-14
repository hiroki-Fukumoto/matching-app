import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Option {
  String value = '';
  String text = '';

  Option(this.value, this.text);
}

class Dropdown extends StatelessWidget {
  final String? selected;
  final String? label;
  final List<Option> options;
  final ValueChanged<String?> onChanged;

  const Dropdown(
      {Key? key,
      this.selected,
      this.label,
      required this.options,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        labelText: label,
      ),
      items: options
          .map(
            (option) => DropdownMenuItem(
              value: option.value,
              child: Text(option.text),
            ),
          )
          .toList(),
      onChanged: (String? text) {
        onChanged(text);
      },
      value: selected,
    );
  }
}
