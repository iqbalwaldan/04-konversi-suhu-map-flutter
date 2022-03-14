// Moh. Iqbal Waldan (2031710139)
import 'package:flutter/material.dart';

class riwayat extends StatelessWidget {
  const riwayat({
    Key? key,
    required this.listViewItem,
  }) : super(key: key);

  final List<String> listViewItem;

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listViewItem.map((String value) {
      return Container(
          margin: const EdgeInsets.all(10),
          child: Text(
            value,
            style: const TextStyle(fontSize: 15),
          ));
    }).toList());
  }
}
