import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fruit_app/Screen/testscreen/description_screen.dart';
import 'package:fruit_app/Screen/testscreen/favourite_screen.dart';
import 'package:fruit_app/models/models.dart';
import 'package:fruit_app/models/fruit_model.dart';
import 'package:fruit_app/Screen/details_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_app/Screen/drawer.dart';

import 'testscreen/details2_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _sc = new ScrollController();

  List<FoodCategory> _foodCategories = [];

  getFoodCategories() {
    // later work on getting data from the api here
    _foodCategories = [
      FoodCategory("Fruits", "assets/oranges.jpg"),
      FoodCategory("Vegetables", "assets/banana.jpg"),
      FoodCategory("Salads", "assets/salad.jpg"),
      FoodCategory("Natural Juices", "assets/salad.jpg"),
      FoodCategory("Healthy", "assets/salad.jpg"),
      FoodCategory("Healthy", "assets/salad.jpg"),
      FoodCategory("Drinks", "assets/drink1.jpg"),
      FoodCategory("Natural Juices", "assets/salad.jpg"),
    ];
  }

  @override
  void initState() {
    getFoodCategories();
  }

  @override
  build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        elevation: 0.0,
        centerTitle: false,
        leading: Container(),
        title: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome ,',
                    style: TextStyle(
                        color: Colors.black38, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile2.jpg'),

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Grocery',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      drawer: NavigationDrawerWidget(),
      body: CustomScrollView(
        controller: _sc,
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                width: 200.0,
                height: 280.0,
                child: ListView.builder(
                    itemCount: _foodCategories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      FoodCategory foodCategory = _foodCategories[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(),
                            ),
                          );
                          // implement on tap functionality here
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              height: 30,
                              width: 160,
                              child: Row(
                                children: [
                                  Text(foodCategory.name),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              height: 220,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: AssetImage(foodCategory.image),
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.9),
                                        BlendMode.dstATop),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        foodCategory.name,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Ksh.200',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        ),
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DescriptionScreen(),
                                              ));
                                          // Add your onPressed code here!
                                        },
                                        child: const Icon(
                                            Icons.shopping_basket_rounded),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))),
                                        backgroundColor: Colors.orange,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                width: 80.0,
                height: 35.0,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Top Purchases',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ]),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DescriptionScreen()));
                        },
                        child: Container(
                          height: 140,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/drink2.jpg'),
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.8),
                                    BlendMode.dstATop),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Expanded(
                                  child: Text(
                                    'Fresh Oranges',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text('1KG Ksh.2,000'),
                                ),
                                //Icon(Icons.add,
                                //color: Colors.green,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              childCount: _foodCategories.length,
            ),
          )
        ],
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
              Icons.search,
              color: Colors.green,
            ),
            label: ('search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            label: ('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.green,
            ),
            label: ('Favourite'),
          ),
        ],
      ),
    );
  }
}

class FoodCategory {
  final String name, image;

  FoodCategory(this.name, this.image);
}

