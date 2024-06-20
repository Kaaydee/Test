import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mydart/modal/item.dart';

import 'Widget/card_body.dart';
import 'Widget/modelbutton.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.blueAccent),
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<dataItem> items = [];

  void _handleAddtask(var name) {
    final newItem = dataItem(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newItem);
    });
  }

  void _handelDeleteTap(var id) {
    setState(() {
      items.removeWhere((items) => items.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ToDoList',
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: items
              .map((item) => cardBody(
                    item: item,
                    handelDelete: _handelDeleteTap,
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              context: context,
              builder: (BuildContext context) {
                return modelbutton(addTask: _handleAddtask);
              });
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
