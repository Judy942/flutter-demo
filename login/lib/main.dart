import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/services.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Dancing",
      ),
      home: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            child: Image.network(
              'https://1.bp.blogspot.com/-yw9KqDnP2Ic/X-3LyYz4p3I/AAAAAAABMmE/r-K3LD6tzE4Mc-PtEjpTdsjdTI2CzPiXACLcBGAsYHQ/s2508/tumblr_d67316715923f506c45bafc154af9264_e3920ef7_1280',
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 130,
                ),
                Center(
                    child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "Judy",
                          style:
                              TextStyle(fontSize: 50, color: Colors.blue[300])),
                      const TextSpan(
                          text: "App",
                          style: TextStyle(fontSize: 50, color: Colors.white)),
                    ],
                  ),
                )),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  margin: const EdgeInsets.fromLTRB(25, 100, 25, 0),
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 20, right: 20)),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 15, 25, 5),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  height: 50,
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 20, right: 20)),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 15, 25, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  //padding: const EdgeInsets.only(left: 20, right: 20),

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent[100],
                        //fixedSize: const Size(300, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: const Center(
                      heightFactor: 2.3,
                      child: Text(
                        'Sign in',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 15, 25, 100),
                  height: 30,
                   width: 5000,

                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        //style: BorderStyle.solid,
                        width: 1
                        
                        ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Sign In With Facebook',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            wordSpacing: 6)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't Have An Account?",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16, wordSpacing: 6)),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Sign up',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    )
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
