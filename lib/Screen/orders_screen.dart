import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/Screen/testscreen/description_screen.dart';
import 'package:fruit_app/Screen/testscreen/details2_screen.dart';
import 'package:fruit_app/Screen/details_screen.dart';
import 'package:fruit_app/Screen/testscreen/favourite_screen.dart';
import 'package:fruit_app/Screen/home_screen.dart';
import 'package:fruit_app/Screen/home1_screen.dart';
import 'package:fruit_app/Screen/login_screen.dart';
import 'package:fruit_app/Screen/test_screen.dart';
import 'package:fruit_app/models/models.dart';
import 'package:fruit_app/Screen/signin_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'farmerhome_screen.dart';
import 'flash_screen.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Center(
            child: Text(
              'Orders'
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FarmerhomeScreen(),
                  ));
              // Add your onPressed code here!
            },
            icon: Icon(Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,),
          ),
          //actions: [Icon(Icons.keyboard_arrow_right_outlined)],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white12,
                          blurRadius: 10,
                          spreadRadius: 8,
                          offset: Offset(8.0, 8.0),
                        )
                      ],
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  //color: Color(0xFF1E1E99),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/Mango.jpeg'))),
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    // Add your onPressed code here!
                                  },
                                  child: const Icon(Icons.check_outlined),
                                  backgroundColor: Colors.green,
                                  mini: true,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Container(
                                    height: 30.0,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Order Placed',
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Mangoes(5KG)',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Ksh.4,000')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white12,
                          blurRadius: 10,
                          spreadRadius: 8,
                          offset: Offset(8.0, 8.0),
                        )
                      ],
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  //color: Color(0xFF1E1E99),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/oranges3.jpeg'))),
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    // Add your onPressed code here!
                                  },
                                  child: const Icon(Icons.check_outlined),
                                  backgroundColor: Colors.green,
                                  mini: true,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Container(
                                    height: 30.0,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Order Placed',
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Oranges(10KG)',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),  SizedBox(
                                  height: 10,
                                ),

                                Text('Ksh.20,000')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white12,
                          blurRadius: 10,
                          spreadRadius: 8,
                          offset: Offset(8.0, 8.0),
                        )
                      ],
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  //color: Color(0xFF1E1E99),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/pineapple.jpeg'))),
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    // Add your onPressed code here!
                                  },
                                  child: const Icon(Icons.check_outlined),
                                  backgroundColor: Colors.green,
                                  mini: true,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Container(
                                    height: 30.0,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Order Placed',
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Pineapples(10KG)',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),  SizedBox(
                                  height: 10,
                                ),

                                Text('Ksh.20,000')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white12,
                          blurRadius: 10,
                          spreadRadius: 8,
                          offset: Offset(8.0, 8.0),
                        )
                      ],
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  //color: Color(0xFF1E1E99),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/brocolli.jpg'))),
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    // Add your onPressed code here!
                                  },
                                  child: const Icon(Icons.watch_later_rounded),
                                  backgroundColor: Colors.green,
                                  mini: true,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Container(
                                    height: 30.0,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Order Pending',
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Brocolli(10KG)',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Ksh.20,000')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white12,
                          blurRadius: 10,
                          spreadRadius: 8,
                          offset: Offset(8.0, 8.0),
                        )
                      ],
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  //color: Color(0xFF1E1E99),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/avocado.png'))),
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    // Add your onPressed code here!
                                  },
                                  child: const Icon(Icons.watch_later_rounded),
                                  backgroundColor: Colors.green,
                                  mini: true,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Container(
                                    height: 30.0,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Order Pending',
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Avocados(10KG)',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Ksh.20,000')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white12,
                          blurRadius: 10,
                          spreadRadius: 8,
                          offset: Offset(8.0, 8.0),
                        )
                      ],
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  //color: Color(0xFF1E1E99),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/Mango.jpeg'))),
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    // Add your onPressed code here!
                                  },
                                  child: const Icon(Icons.timelapse),
                                  backgroundColor: Colors.green,
                                  mini: true,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Container(
                                    height: 30.0,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'In waiting',
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Pineapples(10KG)',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Ksh.20,000')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
