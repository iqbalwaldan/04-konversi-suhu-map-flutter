// Moh. Iqbal Waldan (2031710139)
import 'package:flutter/material.dart';

import 'widgets/convert.dart';
import 'widgets/input.dart';
import 'widgets/result.dart';
import 'widgets/dropdown.dart';
import 'widgets/riwayat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = TextEditingController();
  // variable berubah
  double _inputUser = 0;
  String _newValue = "Kelvin";
  var listItem = ["Kelvin", "Reamur", "Fahrenheit"];
  final inputController = TextEditingController();
  double _result = 0;
  List<String> listViewItem = <String>[];

  konvertHandler() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      if (_newValue == "Kelvin") {
        _result = _inputUser + 273;
        listViewItem.add("Konversi dari : " +
            "$_inputUser" +
            " ke " +
            "$_result" +
            " Kelvin");
      } else if (_newValue == "Reamur") {
        _result = (4 / 5) * _inputUser;
        listViewItem.add("Konversi dari : " +
            "$_inputUser" +
            " ke " +
            "$_result" +
            " Reamur");
      } else {
        _result = _inputUser * 9 / 5 + 32;
        listViewItem.add("Konversi dari : " +
            "$_inputUser" +
            " ke " +
            "$_result" +
            " Fahrenheit");
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konverter Suhu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konverter Suhu Moh. Iqbal Waldan (2031710139)"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(etInput: etInput),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue,
                onChanged: (changeValue) {
                  setState(() {
                    _newValue = changeValue!;
                  });
                  konvertHandler();
                },
                isExpanded: true,
              ),
              Result(
                result: _result,
                title: _newValue,
              ),
              Convert(konvertHandler: konvertHandler),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: const Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: riwayat(listViewItem: listViewItem),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void dropdownOnChanged(String changeValue) {
    setState(() {
      _newValue = changeValue;
    });
  }
}
