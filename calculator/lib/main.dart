import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(fontFamily: "Playfair"),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: ' Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

//MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String equation = "0";
  String result = "0";
  
  @override
  

  Widget buildButtoncolor(String buttonText) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20.0),
            backgroundColor: Colors.grey[300],
            primary: Colors.grey),
        child: Text(
          buttonText,
          style: const TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget buildButton(String buttonText) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(24.0), primary: Colors.grey),
        child: Text(
          buttonText,
          style: const TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        onPressed: () => {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 12.0),
                  child: Text("0",
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 12.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Text("0",
                      style: const TextStyle(
                        fontSize: 45.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Column(children: [
                  Row(children: [
                    Expanded(child: buildButtoncolor("AC")),
                    Expanded(child: buildButtoncolor("±")),
                    Expanded(child: buildButtoncolor("%")),
                    Expanded(child: buildButtoncolor("÷"))
                  ]),
                  Row(children: [
                    Expanded(child: buildButton("7")),
                    Expanded(child: buildButton("8")),
                    Expanded(child: buildButton("9")),
                    Expanded(child: buildButtoncolor("*"))
                  ]),
                  Row(children: [
                    Expanded(child: buildButton("4")),
                    Expanded(child: buildButton("5")),
                    Expanded(child: buildButton("6")),
                    Expanded(child: buildButtoncolor("-"))
                  ]),
                  Row(children: [
                    Expanded(child: buildButton("1")),
                    Expanded(child: buildButton("2")),
                    Expanded(child: buildButton("3")),
                    Expanded(child: buildButtoncolor("+"))
                  ]),
                  Row(children: [
                    Expanded(
                      flex: 1,
                      child: buildButton("0"),
                    ),
                    Expanded(flex: 1, child: buildButton(".")),
                    Expanded(flex: 2, child: buildButtoncolor("=")),
                  ]),
                  const SizedBox(
                    height: 20,
                  )
                ])
              ],
            )));
  }
}
