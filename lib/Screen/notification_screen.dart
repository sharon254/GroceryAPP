import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/Screen/orders_screen.dart';
import 'package:fruit_app/Screen/signin_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/screen/drawer.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Center(child: Text('Notification Preferences')),
          actions: [
            Icon(Icons.notification_important_outlined)
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            children: [

              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Select Crops to be notified About',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 700,
                    margin: EdgeInsets.only(right: 8),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
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
                                  children: [
                                    Column(
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            // Add your onPressed code here!
                                          },
                                          shape: RoundedRectangleBorder(),
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
                                    Container(
                                      height: 80,
                                      width: 80,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          //color: Color(0xFF1E1E99),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image:
                                              AssetImage('assets/Mango.jpeg'))),
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                    Column(
                                      children: [
                                        Text(
                                          'Mangoes',
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
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
                                  children: [
                                    Column(
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            // Add your onPressed code here!
                                          },
                                          shape: RoundedRectangleBorder(),
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
                                    Container(
                                      height: 80,
                                      width: 80,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          //color: Color(0xFF1E1E99),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image:
                                              AssetImage('assets/avocado.png'))),
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                    Column(
                                      children: [
                                        Text(
                                          'Avocados',
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
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
                                  children: [
                                    Column(
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            // Add your onPressed code here!
                                          },
                                          shape: RoundedRectangleBorder(),
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
                                    Container(
                                      height: 80,
                                      width: 80,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          //color: Color(0xFF1E1E99),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image:
                                              AssetImage('assets/oranges3.jpeg'))),
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                    Column(
                                      children: [
                                        Text(
                                          'Oranges',
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
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
                                  children: [
                                    Column(
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            // Add your onPressed code here!
                                          },
                                          shape: RoundedRectangleBorder(),
                                          //child: const Icon(Icons.check_outlined),
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
                                    Container(
                                      height: 80,
                                      width: 80,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          //color: Color(0xFF1E1E99),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image:
                                              AssetImage('assets/berry.jpeg'))),
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                    Column(
                                      children: [
                                        Text(
                                          'Strawberry',
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
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
                                  children: [
                                    Column(
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            // Add your onPressed code here!
                                          },
                                          shape: RoundedRectangleBorder(),
                                          //child: const Icon(Icons.check_outlined),
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
                                    Container(
                                      height: 80,
                                      width: 80,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          //color: Color(0xFF1E1E99),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image:
                                              AssetImage('assets/banana.jpeg'))),
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                    Column(
                                      children: [
                                        Text(
                                          'Bananas',
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
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
                                  children: [
                                    Column(
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            // Add your onPressed code here!
                                          },
                                          shape: RoundedRectangleBorder(),
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
                                    Container(
                                      height: 80,
                                      width: 80,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          //color: Color(0xFF1E1E99),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image:
                                              AssetImage('assets/Mango.jpeg'))),
                                    ),
                                    Expanded(
                                      child: Row(),
                                    ),

                                    Column(
                                      children: [
                                        Text(
                                          'Pineapples',
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(),
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
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.border_bottom,
              color: Colors.green,
            ),
            label: ('search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket_rounded,
              color: Colors.green,
            ),
            label: ('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz_rounded,
              color: Colors.grey,
            ),
            label: ('Favourite'),
          ),
        ],
      ),
    );

  }
}
