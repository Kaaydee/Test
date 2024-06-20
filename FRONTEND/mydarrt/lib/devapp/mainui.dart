import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.blueAccent),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        backgroundColor: const Color(0xff143234),
        title: const Text(
          "PROFILE",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
          hoverColor: const Color.fromARGB(255, 130, 129, 129),
          onPressed: () => (),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: const Color(0xff143234),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          ('assetss/anh1.jpg'),
                        )
                        // 'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        // ),
                        ),
                    //
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: const Text(
                              'NGUYỄN TUẤN KIỆT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 5)),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: const Text(
                                    'ID: ',
                                    style: TextStyle(
                                      // fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: const Text(
                                    '2211765',
                                    style: TextStyle(
                                      color: Colors.white,
                                      // fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 5)),
                          Container(
                            child: const Text(
                              'Xe khách ',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 5)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 170,
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'TÌNH TRẠNG',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 30,
                          // width: 250,
                          decoration: BoxDecoration(
                            // Bo tròn góc
                            color: const Color.fromARGB(255, 9, 174, 12),
                            borderRadius: BorderRadius.circular(500),
                          ),
                          alignment: Alignment.center,
                          // color: const Color.fromARGB(255, 9, 174, 12),
                          child: const Text('Đang hoạt động'),
                          // Your container properties here
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 30)),
                  SizedBox(
                    // width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'TUYẾN',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          // width: 250,
                          decoration: BoxDecoration(
                            color: const Color(0xffDEDEDE),
                            borderRadius: BorderRadius.circular(000),
                          ),
                          padding: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          // color: const Color.fromARGB(255, 9, 174, 12),
                          child: const Text(
                            'CAO LÃNH - SÀI GÒN',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 30)),
                  SizedBox(
                    // width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 50,
                          // width: 250,
                          decoration: BoxDecoration(
                            color: const Color(0xffDEDEDE),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          padding: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          // color: const Color.fromARGB(255, 9, 174, 12),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'THÔNG TIN CÁ NHÂN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 30)),
                  SizedBox(
                    // width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 50,
                          // width: 250,
                          decoration: BoxDecoration(
                            color: const Color(0xffDEDEDE),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          padding: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          // color: const Color.fromARGB(255, 9, 174, 12),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'LỊCH SỬ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(110, 0, 110, 0),
        padding: const EdgeInsets.fromLTRB(1, 1, 1, 10),
        child: SizedBox(
          height: 50,
          width: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BottomAppBar(
              color: const Color(0xff143234),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    alignment: Alignment.center,
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 20,
                    ),
                    hoverColor: const Color.fromARGB(255, 130, 129, 129),
                    onPressed: () {
                      // Handle your action here
                    },
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 20,
                    ),
                    hoverColor: const Color.fromARGB(255, 130, 129, 129),
                    onPressed: () {
                      // Handle your action here
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () {},
                    hoverColor: const Color.fromARGB(255, 130, 129, 129),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
