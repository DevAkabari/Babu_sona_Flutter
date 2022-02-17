import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'assets/image/i1.jpg',
                    alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.width / 1,
                    width: MediaQuery.of(context).size.width / 1,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 25,
                        offset: Offset(0, -40),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'Login',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 90,
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
        ],
      ),
    );
  }
}
