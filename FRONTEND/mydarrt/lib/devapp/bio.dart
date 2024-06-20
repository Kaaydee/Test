import 'dart:html';

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
              icon: const Icon(Icons.home),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
          centerTitle: true,
          backgroundColor: const Color(0xff143234),
          title: const Text(
            "TIỂU SỬ",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.white),
            hoverColor: const Color.fromARGB(255, 130, 129, 129),
            onPressed: () => (),
          ),
        ),
        // body: Container(
        //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        //   constraints: const BoxConstraints.expand(),
        //   color: Colors.white,
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: <Widget>[
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         Container(
        //           padding: const EdgeInsets.fromLTRB(1000, 100, 1000, 100),
        //           margin: const EdgeInsets.all(12),
        //           color: Colors.amber,
        //           child: const Text(
        //             'hello',
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: const Color(0xffDFDFDF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Họ và Tên',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Nguyễn Tuấn Kiệt',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Năm sinh',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            '1999',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Giới tính',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Nam',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
            ),
            Container(
              width: double.infinity,
              height: 450,
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: const Color(0xffDFDFDF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Số điện thoại',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            '0369463914',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Địa chỉ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            '45 Tân Lập, phường Đông Hòa, Tp. Dĩ An, tỉnh Bình Dương',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Email',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'nguyentuankiet.160704@gmail.com',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Bằng lái xe hạng',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'C1',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Loại xe',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Xe khách',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Tuyến',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Sài Gòn - Cao Lãnh',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
