import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/Screen/testscreen/description_screen.dart';
import 'package:fruit_app/Screen/testscreen/details2_screen.dart';
import 'package:fruit_app/Screen/details_screen.dart';
import 'package:fruit_app/Screen/testscreen/favourite_screen.dart';
import 'package:fruit_app/Screen/flash2_screen.dart';
import 'package:fruit_app/Screen/home_screen.dart';
import 'package:fruit_app/Screen/home1_screen.dart';
import 'package:fruit_app/Screen/login_screen.dart';
import 'package:fruit_app/Screen/test_screen.dart';
import 'package:fruit_app/models/models.dart';
import 'package:fruit_app/Screen/signin_screen.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.lightGreen,
                Colors.green,
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/logo.jpeg'),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'KILIMO SOKO!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  child: Text("Sign In "),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.green,
                      elevation: 20,
                      minimumSize: Size(100, 50),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Flash2Screen(),
                      ),
                    );

                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  child: Text(" Log In"),
                  style: TextButton.styleFrom(
                      primary: Colors.green,
                      backgroundColor: Colors.white,
                      elevation: 20,
                      minimumSize: Size(150, 50),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Dont have an account yet?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Skip',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

