import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/Screen/home_screen.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: SizedBox(
                  width: 600,
                  height: 350,
                  child: Stack(
                    children: [
                      Container(
                        width: 500,
                        height: 350,
                        color: Colors.white,
                      ),
                      Container(
                        child: Image.asset('assets/oranges3.jpeg'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ));
                                    // Add your onPressed code here!
                                  },
                                  child: const Icon(Icons.arrow_back_ios,
                                    color: Colors.amber),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                                  backgroundColor: Colors.white,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ));
                                    // Add your onPressed code here!
                                  },
                                  child: const Icon(Icons.shopping_cart,
                                      color: Colors.amber),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                                  backgroundColor: Colors.white,
                                ),
                              ],
                            ),
                            /* Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 400,
                                  height: 250,
                                  child: Image.asset('assets/oranges3.jpeg'),
                                )
                              ],


                            ), */
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                height: size.height * 0.30,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white24,
                ),
                child: Column(
                  children: [
                    Text(
                      'Orange Fruit',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.local_fire_department_outlined,
                            color: Colors.orangeAccent,
                          ),
                          Text(
                            '69 Calories',
                          ),
                          Icon(
                            Icons.timer,
                            color: Colors.orangeAccent,
                          ),
                          Text('20-30 Min'),
                          Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                          ),
                          Text('4.9')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 300.0,
                      height: 100.0,
                      child: Column(
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. niesse cillum ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Besley',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.local_fire_department_outlined),
                          Text('69 Calories'),
                          Icon(Icons.add,
                          color: Colors.green,),
                          Text('5 KG',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),),
                          Icon(Icons.remove,
                          color: Colors.green),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Price',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Besley',
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text ('Ksh.200',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Besley',
                            color: Colors.black,
                          ),)
                      ],

                    ),
                    Column(
                      children: [
                        TextButton(
                          child: Text("Add to Cart",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Besley',
                            ),),
                          style: TextButton.styleFrom(

                              primary: Colors.white,
                              backgroundColor: Colors.green,
                              elevation: 20,
                              minimumSize: Size(100, 50),
                              padding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
                          onPressed: () {},
                        ),
                      ],

                    )
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
