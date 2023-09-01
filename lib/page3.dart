import 'package:flutter/material.dart';
import 'package:primzee/deta.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<Map<String, dynamic>> icon1 = [
    {
      'icon': 'assets/images/hamburger.png',
      'icon1': 'assets/images/hamburger (1).png',
    },
    {
      'icon': 'assets/images/tshirt.png',
      'icon1': 'assets/images/t-shirt.png',
    },
    {
      'icon': 'assets/images/pills (1).png',
      'icon1': 'assets/images/pills.png',
    },
    {
      'icon': 'assets/images/cosmetics.png',
      'icon1': 'assets/images/cosmetics (1).png',
    },
    {
      'icon': 'assets/images/bread.png',
      'icon1': 'assets/images/bread (1).png',
    },
  ];

  List<Map<String, dynamic>> list = [
    {
      'name': 'Pizza ',
      'icon': 'assets/images/pizza.jpg',
    },
    {
      'name': 'Hamburger',
      'icon': 'assets/images/hambu.jpg',
    },
    {
      'name': 'Special',
      'icon': 'assets/images/pizza1.jpg',
    },
  ];

  List<Map<String, dynamic>> list3 = [
    {
      'image': 'assets/images/spicy.jpg',
      'name': 'Spicy McChiken\nLarge Meal',
      'price': '25,00',
    },
    {
      'image': 'assets/images/spicy2.jpg',
      'name': 'Spicy McChiken\nLarge Meal',
      'price': '25,00',
    },
  ];

  int selectd = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f3f5),
      drawer: Column(
        children: [
          Container(
            height: 650,
            width: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Color(0xffFFDE00),
            ),
            child: Column(
              children: [
                Container(
                  height: 600,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close, color: Colors.grey),
                            ),
                            SizedBox(width: 5),
                            Text('PRIMZEE',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ],
                        ),
                      ),
                      SizedBox(height: 80),
                      CircleAvatar(
                        maxRadius: 50,
                        backgroundColor: Color(0xffFFDE00),
                        child: Image.asset('assets/images/user.png',
                            height: 75, width: 70),
                      ),
                      SizedBox(height: 10),
                      Text('Florence Dean',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                  maxRadius: 15,
                                  backgroundColor: Colors.black,
                                  child: Image.asset(
                                    'assets/images/fav-removebg-preview.png',
                                    color: Color(0xffFFDE00),
                                    height: 15,
                                    width: 15,
                                  )),
                              SizedBox(width: 5),
                              Text('My Orders',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Container(
                        height: 180,
                        width: 300,
                        //  color: Colors.red,
                        child: GridView.builder(
                          itemCount: 4,
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 5,
                                  childAspectRatio: 2.8 / 2.5),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  height: 75,
                                  width: 75,
                                  //color: Colors.orange,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          // color: Colors.yellow,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                data[index]['image']),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        data[index]['name'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text('Log out',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              ],
            ),
          ),
        ],
      ),
      appBar: AppBar(
        // leading:
        backgroundColor: Colors.white,
        toolbarHeight: 30,
        title: Text(
          'PRIMZEE',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
                backgroundColor: Color(0xffFFDE00),
                maxRadius: 20,
                child: Icon(
                  Icons.close,
                  size: 18,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                  //color: Color(0xffFFDE00),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Container(
                      height: 90,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      //color: Colors.deepOrangeAccent.shade200,
                      child: ListView.builder(
                        itemCount: icon1.length,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 30,
                            width: 63,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)),
                            margin: EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectd = index;
                                      });
                                    },
                                    child: Container(
                                      height: 60,
                                      width: 40,
                                      // color: Colors.deepOrangeAccent,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: selectd == index
                                                ? Image.asset(
                                                    icon1[index]['icon'],
                                                    height: 35,
                                                    width: 35,
                                                  )
                                                : Image.asset(
                                                    icon1[index]['icon1'],
                                                    height: 35,
                                                    width: 35,
                                                  ),
                                          ),
                                          selectd == index
                                              ? Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.black,
                                                )
                                              : SizedBox(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 38),
                    child: Row(
                      children: [
                        Text('Search',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      height: 50,
                      width: 320,
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.keyboard_voice, size: 20),
                          prefixIcon: Icon(Icons.search_rounded,
                              color: Color(0xffFFDE00), size: 20),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Search products',
                          hintStyle: TextStyle(
                            fontSize: 15,
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Row(
                children: [
                  Text('Popular',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50,
                  width: 360,
                  //color: Colors.red,
                  child: ListView.builder(
                    itemCount: list.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 30,
                        width: 150,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 0, right: 20),
                              child: Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(list[index]['icon'])),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                children: [
                                  Text(list[index]['name'],
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
            ),
            SizedBox(height: 30),
            Container(
                height: 180,
                width: 360,
                // color: Colors.grey,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list3.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                          height: 200,
                          width: 190,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  //color: Colors.black,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(list3[index]['image']),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(list3[index]['name']),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          list3[index]['price'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.currency_lira,
                                          size: 17,
                                        ),
                                        SizedBox(width: 45),
                                        Container(
                                          height: 25,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade100,
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 3),
                                              Text('30-35 mins',
                                                  style:
                                                      TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
