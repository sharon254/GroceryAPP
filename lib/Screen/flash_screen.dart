import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/Screen/description_screen.dart';
import 'package:fruit_app/Screen/home_screen.dart';
import 'package:fruit_app/models/models.dart';

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
                new SvgPicture.asset(
                  'assets/svg/grocery1.svg',
                  height: 300.0,
                  width: 300.0,
                  allowDrawingOutsideViewBox: true,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome to Fruity!',
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
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  child: Text("Skip "),
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
                        builder: (context) => HomeScreen(),
                      ),
                    );

                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Dont have an account yet?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Sign in',
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
