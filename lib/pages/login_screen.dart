import 'package:chate_ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
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
              Container(
                padding: EdgeInsets.only(bottom: 30),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Hello,',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                      textAlign: TextAlign.start,
                    ),
                    const Text(
                      "Login Now.",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "If You are New /",
                            style: TextStyle(color: Colors.black87)),
                        TextSpan(
                            text: " Create New",
                            style: TextStyle(
                                color: Color(0xffA23243),
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                      decoration: InputDecoration(
                        hintStyle:
                            TextStyle(fontSize: 20.0, color: Color(0xFFB1B1B1)),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 16.0),
                        fillColor: Color(0xFFECECEC),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                        hintText: 'Username',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: SvgPicture.asset(
                            'assets/icon/Userr.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      style:
                          const TextStyle(color: Colors.black87, fontSize: 20),
                      decoration: InputDecoration(
                        hintStyle:
                            TextStyle(fontSize: 20.0, color: Color(0xFFB1B1B1)),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 16.0),
                        fillColor: const Color(0xFFECECEC),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                        hintText: 'Password',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: SvgPicture.asset(
                            'assets/icon/Lock.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: const Color(0xffA23243),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        minimumSize: const Size.fromHeight(50), // NEW
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
