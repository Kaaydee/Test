import 'package:flutter/material.dart';

class cardBody extends StatelessWidget {
  cardBody({super.key, required this.item, required this.handelDelete});

  var item;
  final Function handelDelete;
  @override
  Widget build(BuildContext context) {
    var item2 = item;
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xffDFDFDF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                    color: Color(0xff4B4B4B),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  handelDelete(item.id);
                },
                child: const Icon(
                  Icons.delete_outline,
                  color: Color(0xff4B4B4B),
                  size: 30,
                ),
              )
            ],
          ),
        ));
  }
}
