import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/Screen/farmerhome_screen.dart';
import 'package:fruit_app/Screen/flash_screen.dart';
import 'package:fruit_app/Screen/transactionhistory_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'notification_screen.dart';
import 'orders_screen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/crop1.jpg'),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text(
                          'Farmer Doe',
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '3245786635',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FarmerhomeScreen(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(),
                    child: const Icon(Icons.home),
                    backgroundColor: Colors.green,
                    mini: true,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Home',
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 1.0,
                width: 250.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrdersScreen(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(),
                    child: const Icon(Icons.card_travel),
                    backgroundColor: Colors.green,
                    mini: true,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Previous Orders',
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 1.0,
                width: 250.0,
                color: Colors.white,
              ),
            ),
            /*SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrdersScreen(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(),
                    child: const Icon(Icons.watch_later_rounded),
                    backgroundColor: Colors.green,
                    mini: true,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Pending Orders',
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 1.0,
                width: 250.0,
                color: Colors.white,
              ),
            ),*/
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FarmerhomeScreen(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(),
                    child: const Icon(Icons.compare_arrows_rounded),
                    backgroundColor: Colors.green,
                    mini: true,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Processing Orders',
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 1.0,
                width: 250.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransactionScreen(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(),
                    child: const Icon(Icons.money),
                    backgroundColor: Colors.green,
                    mini: true,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Payment History',
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 1.0,
                width: 250.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationScreen(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(),
                    child: const Icon(Icons.notification_important_outlined),
                    backgroundColor: Colors.green,
                    mini: true,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Notification Preferences',
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 1.0,
                width: 250.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text("Log Out "),
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  elevation: 20,
                  minimumSize: Size(250, 40),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlashScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
