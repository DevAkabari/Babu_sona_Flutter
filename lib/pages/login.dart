import 'package:chate_ui/svg/one.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.65,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 90,
                left: 0,
                child: Align(
                  // alignment: Alignment.topLeft,
                  child: Container(
                    // alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.width / 5,
                    width: MediaQuery.of(context).size.width / 10,
                    decoration: const BoxDecoration(
                        color: Color(0xff080808),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(140),
                            topRight: Radius.circular(140))),
                  ),
                ),
              ),
              Positioned(
                top: 170,
                child: Container(
                    child: CustomPaint(
                  size: Size(
                      width - 60,
                      (height * 0.6 * 0.5353535353535354)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter2(),
                )),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Image.asset('assets/image/w12.png'),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                    child: CustomPaint(
                  size: Size(
                      width - 150,
                      (height * 0.4 * 0.5353535353535354)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter1(),
                )),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  // color: Colors.pink,
                  child: Column(
                    children: const [
                      Text(
                        'Get Started',
                        style: TextStyle(fontSize: 50, color: Colors.black),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
