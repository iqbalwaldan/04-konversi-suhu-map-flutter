// Moh. Iqbal Waldan (2031710139)
import 'package:flutter/material.dart';

class DropdownKonversi extends StatelessWidget {
  const DropdownKonversi({
    Key? key,
    required this.newValue,
    required this.listItem,
    required this.dropdownOnChanged,
  }) : super(key: key);

  final String newValue;
  final List<String> listItem;
  final Function dropdownOnChanged;

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
      onChanged: (value) {
        dropdownOnChanged(value);
      },
      isExpanded: true,
    );
  }
}
