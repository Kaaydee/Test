import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Sài Gòn <-> Cao Lãnh',
  'Sài Gòn <-> Vũng Tàu',
  'Sài Gòn <-> Đà Lạt',
  'Sài Gòn <-> Đồng Nai',
  'Sài Gòn <-> Lâm Đồng',
  'Sài Gòn <-> Đà Nẵng',
  'Sài Gòn <-> Cao Lãnh',
  'Sài Gòn <-> Vũng Tàu',
  'Sài Gòn <-> Đà Lạt',
  'Sài Gòn <-> Đồng Nai',
  'Sài Gòn <-> Lâm Đồng',
  'Sài Gòn <-> Đà Nẵng',
  'Sài Gòn <-> Cao Lãnh',
  'Sài Gòn <-> Vũng Tàu',
  'Sài Gòn <-> Đà Lạt',
  'Sài Gòn <-> Đồng Nai',
  'Sài Gòn <-> Lâm Đồng',
  'Sài Gòn <-> Đà Nẵng',
];

void main() => runApp(const TuyenxeMenuApp());

class TuyenxeMenuApp extends StatelessWidget {
  const TuyenxeMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      // margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: DropdownMenuExample(),
    );
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      label: const Text("Tuyến"),
      width: 300,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
