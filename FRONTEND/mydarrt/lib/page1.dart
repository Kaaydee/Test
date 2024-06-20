import 'sex.dart';
import 'tuyenxe.dart';
import 'dropdown.dart';
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
        centerTitle: true,
        backgroundColor: const Color(0xff143234),
        title: const Text(
          "ĐĂNG KÍ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
          hoverColor: const Color.fromARGB(255, 130, 129, 129),
          onPressed: () => (),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: const SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                child: Text(
                  "WELCOME ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Họ và tên',
                    prefixIcon: Icon(Icons.people),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Năm sinh',
                          prefixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffCED0D2), width: 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GenderSelector(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Địa chỉ',
                    prefixIcon: Icon(Icons.home_filled),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Số điện thoại',
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Bằng lái xe hạng',
                    prefixIcon: Icon(Icons.drive_eta),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              DropdownMenuApp(),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              TuyenxeMenuApp(),
              Padding(padding: EdgeInsets.only(bottom: 10)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        width: 0.5,
        child: ElevatedButton.icon(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff143234),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 6,
            shadowColor: Colors.black.withOpacity(0.5),
          ),
          icon: const Icon(Icons.save),
          label: const Text("Save"),
        ),
      ),
    );
  }
}
