import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/Screen/orders_screen.dart';
import 'package:fruit_app/Screen/signin_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/screen/drawer.dart';

class FarmerhomeScreen extends StatefulWidget {
  const FarmerhomeScreen({Key? key}) : super(key: key);

  @override
  _FarmerhomeScreenState createState() => _FarmerhomeScreenState();
}

class _FarmerhomeScreenState extends State<FarmerhomeScreen> {
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
          actions: [
            Icon(Icons.notification_important_outlined)
          ],
        ),
      ),
      drawer: NavigationDrawerWidget(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              /*Container(
                margin: EdgeInsets.only(left: 15, right: 14),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Tapped');
                      },
                      child: SvgPicture.asset('assets/svg/menu1.svg'),
                    ),
                    Expanded(
                      child: Row(),
                    ),
                    Container(
                      height: 59,
                      width: 59,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/images/profile.jpg'))),
                    ),
                  ],
                ),
              ),*/
              /*Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(child: Text(
                      'Drawer'
                    ),

                    ),
                    ListTile(
                      title: const Text('Item 1'),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ],
                ),
              ),
               */
              Container(
                height: 70,
                width: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      child: Text("Order "),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          elevation: 10,
                          minimumSize: Size(5, 5),
                          padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 50)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrdersScreen(),
                          ),
                        );

                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      child: Text("Pending"),
                      style: TextButton.styleFrom(
                          primary: Colors.green,
                          backgroundColor: Colors.white,
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        );

                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      child: Text("Processing "),
                      style: TextButton.styleFrom(
                          primary: Colors.green,
                          backgroundColor: Colors.white,
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        );

                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*Text(
                      'Good evening, Amanda Jones',
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),*/
                    SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Urgent Orders',
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

              Container(
                height: 150,
                width: 150,
                child: ListView.builder(
                  itemCount: 15,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16),
                  itemBuilder: (context, i) {
                    return Container(
                      height: 150,
                      width: 150,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          //color: Color(0xFF1E1E99),
                          color: Colors.white,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/oranges3.jpeg'))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Oranges(3KG)",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Pending ',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 350,
                margin: EdgeInsets.only(right: 8),
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.only(left: 16),
                  itemBuilder: (context, i) {
                    return Container(
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

                                Column(
                                  children: [
                                    Text(
                                      'Mangoes(5KG)',
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
                                Expanded(
                                  child: Row(),
                                ),
                                Text(
                                  '1st October 2021',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.blueGrey,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
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
