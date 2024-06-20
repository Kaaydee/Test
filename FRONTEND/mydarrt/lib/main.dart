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
      // bottomNavigationBar: BottomAppBar(
      //   child: ElevatedButton.icon(
      //     onPressed: () => {},
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: const Color(0xff143234),
      //       foregroundColor: Colors.white,
      //       padding: const EdgeInsets.all(20),
      //       shape:
      //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      //       elevation: 10,
      //       shadowColor: Colors.black.withOpacity(0.5),
      //     ),
      //     icon: const Icon(Icons.home),
      //     label: const Text(""),
      //   ),
      // ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.fromLTRB(1, 1, 1, 10),
      //   child: SizedBox(
      //     height: 50,
      //     width: 1,
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.circular(40),
      //       child: BottomAppBar(
      //         color: const Color(0xff143234),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: <Widget>[
      //             IconButton(
      //               icon: const Icon(
      //                 Icons.home,
      //                 color: Colors.white,
      //                 size: 20,
      //               ),
      //               hoverColor: const Color.fromARGB(255, 130, 129, 129),
      //               onPressed: () {
      //                 // Handle your action here
      //               },
      //             ),
      //             IconButton(
      //               icon: const Icon(
      //                 Icons.search,
      //                 color: Colors.white,
      //                 size: 20,
      //               ),
      //               onPressed: () {},
      //               hoverColor: const Color.fromARGB(255, 130, 129, 129),
      //             ),
      //             IconButton(
      //               icon: const Icon(
      //                 Icons.notifications,
      //                 color: Colors.white,
      //                 size: 20,
      //               ),
      //               hoverColor: const Color.fromARGB(255, 130, 129, 129),
      //               onPressed: () {
      //                 // Handle your action here
      //               },
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.filter_list_alt),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
            color: Colors.white,
          ),
        ],
        centerTitle: true,
        backgroundColor: const Color(0xff143234),
        title: const Text(
          "DANH SÁCH TÀI XẾ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
          hoverColor: const Color.fromARGB(255, 130, 129, 129),
          onPressed: () => (),
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomRight,
        margin: const EdgeInsets.all(20),
        child: FloatingActionButton(
          backgroundColor: const Color(0xff143234),
          onPressed: () {},
          hoverColor: const Color.fromARGB(255, 130, 129, 129),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: const Color(0xffDFDFDF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NGUYỄN TRẦN MINH TÂM",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                  Text(
                    "ID: 2211765",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Đang hoạt động",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "Tuyến: SG - VT",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: const Color(0xffDFDFDF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "HỒ THÀNH NHÂN",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                  Text(
                    "ID: 2211765",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Đang chờ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "Tuyến: SG - VT",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: const Color(0xffDFDFDF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NGUYỄN TUẤN KIỆT",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                  Text(
                    "ID: 2211765",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Đang hoạt động",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "Tuyến: SG - VT",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: const Color(0xffDFDFDF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NGUYỄN VĂN A",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                  Text(
                    "ID: 2211765",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Đang chờ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "Tuyến: ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
