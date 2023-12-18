import 'package:flutter/material.dart';

import 'item_screen.dart';

class Home extends StatelessWidget {

  List foods = [
    "Burger",
    "Fries",
    "Chicken",
    "Breakfast",
    "Drinks",
  ];

  List foods2 = [
    "BigMac",
    "mediumfries",
    "1pcChickenRice",
    "breakfast1",
    "CokeMcFloat",
  ];

  List foods3 = [
    "SpecialOffers1",
    "SpecialOffers2",
    "SpecialOffers3",
    "SpecialOffers4",
    "SpecialOffers5",
  ];

  List foods4 = [
    "Cheesy BigMac",
    "McNuggets",
    "McBundle",
    "BigMac w/ Fries",
    "Bff Bundle",
  ];

  List price = [
    "280.00",
    "500.00",
    "800.00",
    "250.00",
    "325.00",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: ListView(
          children: [
            Container(
              width: 500,
              height: 190,
              decoration: BoxDecoration(
                color: Colors.red[700],
              ),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/mcdologo.png"),
                        Padding(padding: const EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.location_on_outlined, color: Colors.yellow,),
                        ),
                        Text('Alaminos City, Pangasinan',
                          style: TextStyle(
                              color: Colors.white, fontSize: 20.0),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 25.0),
                    child: SizedBox(
                      width: 370,
                      height: 40,
                      child: TextField(
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            hintText: "Search your food here...",
                            prefixIcon: Icon(
                              Icons.search,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Colors.white,
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: InkWell(
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                          child: Image.asset("assets/promo1.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: InkWell(
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                          child: Image.asset("assets/promo2.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: InkWell(
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                          child: Image.asset("assets/promo3.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: InkWell(
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                          child: Image.asset("assets/promo4.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: InkWell(
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                          child: Image.asset("assets/promo5.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/${foods2[index]}.jpeg",
                          height: 80,
                          width: 80,
                        ),
                        Text(
                          foods[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  );
                },),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Special Offers",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text("See All",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 15),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/${foods3[index]}.jpg",
                            height: 100,
                            width: 100,
                          ),
                          Text(
                            foods4[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            price[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 25,
              )
            ]
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
           currentIndex: 1,
            onTap: (index) {Navigator.push(context, MaterialPageRoute(builder: (context) => ItemScreen(),));},
            type: BottomNavigationBarType.fixed,
           items: [
             BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_sharp), label: "Cart"),
             BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
             BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
           ],
          ),
        ),
      ),
    );
  }
}
