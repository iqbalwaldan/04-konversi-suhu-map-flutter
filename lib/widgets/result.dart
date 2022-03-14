// Moh. Iqbal Waldan (2031710139)
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required double result,
    required this.title,
  })  : _result = result,
        super(key: key);

  final double _result;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hasil",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            _result.toStringAsFixed(1),
            style: const TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
