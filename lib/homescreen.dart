import 'package:flutter/material.dart';
import 'package:primzee/secondscrren.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> list1 = [
    {
      'image': 'assets/images/resto.png',
      'image1': 'assets/images/mc.png',
      'name': "Mc Donald's Beeghley",
      'sname': 'it is often frustrating to attempt to... ',
    },
    {
      'image': 'assets/images/resto1.png',
      'image1': 'assets/images/mc.png',
      'name': "Mc Donald's Beeghley",
      'sname': 'it is often frustrating to attempt to... ',
    },
    {
      'image': 'assets/images/resto1.png',
      'image1': 'assets/images/mc.png',
      'name': "Mc Donald's Beeghley",
      'sname': 'it is often frustrating to attempt to... ',
    },
  ];

  List<Map<String, dynamic>> list2 = [
    {
      'image': 'assets/images/statbucks.png',
      'name': '30 - 35 mins',
      'name1': 'min. 25,00',
      'name2': '9,9',
    },
    {
      'image': 'assets/images/subway.png',
      'name': '30 - 35 mins',
      'name1': 'min. 25,00',
      'name2': '9,9',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f3f5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 360,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.menu, size: 30),
                        SizedBox(width: 5),
                        Text(
                          'PRIMZEE',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.yellow),
                      child: Icon(Icons.search, size: 20),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 30),
                  child: Text('Delivering to',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Container(
                    height: 50,
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.gps_fixed, size: 20),
                        prefixIcon: Icon(Icons.beenhere_outlined,
                            color: Color(0xffFFDE00), size: 20),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: 'Home  . 4405 Beeghley Street',
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 1,
                              color: Colors.grey.shade400),
                        ],
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 30, bottom: 20),
                  child: Text('Featured Resturants',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Secondscreen()));
                  },
                  child: Container(
                    height: 187,
                    width: 360,
                    decoration: BoxDecoration(
                        // color: Colors.white70,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.builder(
                      itemCount: list1.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 100,
                          width: 305,
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            //color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                list1[index]['image'],
                              ),
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
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 5),
                                        child: Row(
                                          children: [
                                            Text(
                                              '7,9',
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
                              Container(
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
                                      Image.asset(list1[index]['image1'],
                                          height: 50, width: 50),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(list1[index]['name'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17)),
                                          Text(list1[index]['sname'],
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13)),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 30),
                  child: Text('Recomended',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                SizedBox(height: 10),
                Container(
                    height: 150,
                    width: 360,
                    // color: Colors.grey,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list2.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Container(
                              height: 200,
                              width: 155,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    list2[index]['image'],
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            list2[index]['name'],
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(list2[index]['name1'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade100,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Row(
                                              children: [
                                                Text(
                                                  list2[index]['name2'],
                                                ),
                                                SizedBox(width: 5),
                                                Icon(Icons.favorite, size: 14),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
          ],
        ),
      ),
    );
  }
}
