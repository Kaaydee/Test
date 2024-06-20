import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  Gender _selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: [
              Radio<Gender>(
                value: Gender.male,
                groupValue: _selectedGender,
                onChanged: (Gender? value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
                activeColor: const Color(0xff143234),
              ),
              const Text(
                "Nam",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Radio<Gender>(
                value: Gender.female,
                groupValue: _selectedGender,
                onChanged: (Gender? value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
                activeColor: const Color(0xff143234),
              ),
              const Text(
                'Nữ',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}


  // @override
  // Widget build(BuildContext context) {
  //   return Row(
  //     children: <Widget>[
  //       Expanded(
  //         child: ListTile(
  //           title: const Text(
  //             "Nam",
  //             style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
  //           ),
  //           leading: Radio<Gender>(
  //             value: Gender.male,
  //             groupValue: _selectedGender,
  //             onChanged: (Gender? value) {
  //               setState(() {
  //                 _selectedGender = value!;
  //               });
  //             },
  //             activeColor: const Color(0xff143234),
  //           ),
  //         ),
  //       ),
  //       Expanded(
  //         child: ListTile(
  //           title: const Text(
  //             'Nữ',
  //             style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
  //           ),
  //           leading: Radio<Gender>(
  //             value: Gender.female,
  //             groupValue: _selectedGender,
  //             onChanged: (Gender? value) {
  //               setState(() {
  //                 _selectedGender = value!;
  //               });
  //             },
  //             activeColor: const Color(0xff143234),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
