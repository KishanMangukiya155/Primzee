import 'package:flutter/material.dart';
import 'package:primzee/deta.dart';
import 'package:primzee/page3.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
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
      'name': 'Delivered ',
      'icon': 'assets/images/icon1.png',
      'name2': 'by Primzee'
    },
    {'name': 'Free', 'icon': 'assets/images/icon2.png', 'name2': 'Delivery'},
    {'name': 'Special', 'icon': 'assets/images/icon3.png', 'name2': 'Offers'},
  ];

  List<Map<String, dynamic>> list1 = [
    {'image': 'assets/images/rec2.jpeg', 'name': 'Nations\nBurger'},
    {
      'image': 'assets/images/reco1.jpg',
      'name': 'Japanese\nFood',
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
                  Icons.search,
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
                  color: Color(0xffFFDE00),
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
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Row(
                      children: [
                        Text('Deliver to',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: 325,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.beenhere_outlined,
                                color: Color(0xffFFDE00), size: 20),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Home  . ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15)),
                                  TextSpan(
                                      text: "4405 Beeghley Street ",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15)),
                                ],
                              ),
                            ),
                            Icon(Icons.gps_fixed, size: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 60,
                  width: 360,
                  //color: Colors.red,
                  child: ListView.builder(
                    itemCount: list.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 38,
                        width: 115,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(list[index]['icon'],
                                height: 30, width: 30),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(list[index]['name'],
                                      style: TextStyle(fontSize: 12)),
                                  Text(list[index]['name2'],
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
            Padding(
              padding: const EdgeInsets.only(top: 6, left: 30, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        maxRadius: 13,
                        child: Icon(Icons.replay,
                            color: Color(0xffFFDE00), size: 15),
                      ),
                      SizedBox(width: 8),
                      Text('Recent Orders',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Page3()));
                    },
                    child: Text('View all',
                        style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 2,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 170,
                width: 315,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/images/recent.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 5),
                              child: Row(
                                children: [
                                  Text(
                                    '4,9',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.favorite, size: 14),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Page3()));
                      },
                      child: Container(
                        height: 65,
                        width: 360,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Image.asset('assets/images/chilis.png',
                                  height: 50, width: 50),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('1 x Mushroom Soup...',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13)),
                                  Row(
                                    children: [
                                      Text('85,00',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold)),
                                      Icon(
                                        Icons.currency_lira,
                                        size: 17,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 55),
                              CircleAvatar(
                                backgroundColor: Color(0xff1CBD77),
                                maxRadius: 13,
                                child: Icon(Icons.refresh,
                                    color: Colors.white, size: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 30,
              ),
              child: Row(
                children: [
                  Text('Recomended',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 200,
              width: 340,
              //color: Colors.grey,
              child: ListView.builder(
                itemCount: list1.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink,
                          image: DecorationImage(
                            image: AssetImage(list1[index]['image']),
                            fit: BoxFit.fill,
                          ),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 13),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 15),
                        child: Row(
                          children: [
                            Text(list1[index]['name'],
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 90),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              minRadius: 13,
                              child: Icon(Icons.arrow_forward,
                                  color: Colors.yellow, size: 10),
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
    );
  }
}
