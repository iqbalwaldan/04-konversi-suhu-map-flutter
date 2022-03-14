import 'package:flutter/material.dart';

class DropdownKonversi extends StatelessWidget {
  var listItem;

  var dropdownOnChanged;

  DropdownKonversi({
    Key? key,
    required this.newValue,
    required this.dropdown,
    required this.listItem,
    required this.dropdownOnChanged,
  }) : super(key: key);

  String newValue;
  final VoidCallback dropdown;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listItem.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: newValue,
      onChanged: dropdownOnChanged,
      isExpanded: true,
    );
  }
}
