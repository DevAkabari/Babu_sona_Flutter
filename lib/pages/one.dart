import 'package:chate_ui/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              // height: 600,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      height: height * 0.15,
                      color: const Color(0xffA23243),
                      transform: Matrix4.skew(0, -0.35),
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.11,
                    child: Container(
                      height: height * 0.45,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: Image.asset(
                        'assets/image/w12.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 200),
                      child: Container(
                        height: height * 0.1,
                        width: width * 0.7,
                        color: const Color(0xffA7D3F0),
                        transform: Matrix4.skew(0.0, -0.35),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              // alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 18, color: Color(0xffABACAF)),
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff22232D)),
                    ),
                    Text(
                      'we are your best choice for privacy',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.035,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff303134)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign up',
                          style:
                              TextStyle(color: Color(0xffABACAF), fontSize: 15),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: SvgPicture.asset(
                            "assets/icon/Arrow_right.svg",
                            width: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
