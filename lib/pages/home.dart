import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F0F3),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        titleSpacing: 20,
        title: RichText(
          text: const TextSpan(
              text: 'Camelio',
              style: TextStyle(
                  color: Color(0xFF1F1F1F),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              children: [
                TextSpan(
                  text: 'n',
                  style: TextStyle(color: Color(0xFFF383BD)),
                )
              ]),
        ),
        automaticallyImplyLeading: false,
        shadowColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icon/search.svg'),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 10),
          //   child: IconButton(
          //     icon: SvgPicture.asset('assets/icon/Justified.svg'),
          //     tooltip: 'Show Snackbar',
          //     onPressed: () {
          //       ScaffoldMessenger.of(context).showSnackBar(
          //           const SnackBar(content: Text('This is a tost')));
          //     },
          //   ),
          // ),

          InkWell(
            onTap: () {
              print('Click Profile Pic');
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                radius: 22, // Image radius
                backgroundImage: AssetImage('assets/image/dp.jpg'),
              ),
            ),
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
