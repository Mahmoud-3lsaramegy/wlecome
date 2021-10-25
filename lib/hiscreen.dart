// Main lip of flutter
import 'package:flutter/material.dart';
import 'dart:io';

class HI_Screen extends StatefulWidget {
  const HI_Screen({Key? key}) : super(key: key);

  @override
  _HI_ScreenState createState() => _HI_ScreenState();
}

class _HI_ScreenState extends State<HI_Screen> {
  int _click = 0;

  void increes() {
    setState(() {
      _click++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(200, 58, 53, 48),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 108.1,
                ),
                child: Center(
                  child: SizedBox(
                    width: 186,
                    height: 227.27,
                    child: Image.asset("images/logo.png"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 79.6,
                ),
                child: Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 100,
                ),
                child: Center(
                  child: Text(
                    "Hi Frist Widget by <3lsaramegy>I Used Flutter",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 79.6,
                ),
                child: Center(
                  child: Text(
                    "${_click}",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 20,
                right: 15,
                left: 15,
              ),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: increes,
                  child: Text("LiKE"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    // shape: MaterialStateProperty.all<OutlinedBorder>(),
                  ),
                ),
                width: double.infinity,
                height: 49,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
