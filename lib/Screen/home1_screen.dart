import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:fruit_app/Screen/description_screen.dart';
import 'package:fruit_app/Screen/favourite_screen.dart';
import 'package:fruit_app/Screen/home_screen.dart';

class DescriptionScreen extends StatelessWidget {
  final List<String> imageList = [
    'https://images.unsplash.com/photo-1585827552668-d0728b355e3d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG9yYW5nZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1547514701-42782101795e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8b3JhbmdlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1593278684776-62f6e2dc7604?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fG9yYW5nZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1467453678174-768ec283a940?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZnJ1aXRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
    'https://images.unsplash.com/photo-1596591606975-97ee5cef3a1e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZnJ1aXRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
    'https://images.unsplash.com/photo-1593280443077-ae46e0100ad1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGZydWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
  ];

  @override
  build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(

        child: Container(
          height: size.height,
          width: size.width,
          color: Color(0xffe2dfe7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [],
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 300,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: imageList
                          .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(
                              e,
                              width: 1150,
                              height: 450,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ))
                          .toList(),
                    )
                  ],
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
                      'Oranges',
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
                      height: 80.0,
                      child: Column(
                        children: [
                          Text(
                              '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. niesse cillum ')
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.local_fire_department_outlined),
                          Text('69 Calories'),
                          Icon(Icons.add),
                          Text('5 KG'),
                          Icon(Icons.remove),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
              color: Colors.orangeAccent,
            ),
            label: ('Total Price'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: ('Add to cart'),
          ),
        ],
      ),
    );
  }
}
