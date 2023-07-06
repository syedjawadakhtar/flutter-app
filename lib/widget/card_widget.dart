import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/pages/description_page.dart';

import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(
                box: box,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kdouble10),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kdouble5),
              Image.asset(box.imagePath),
              Text(box.title,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold)),
              Text('This is the ${box.title} description'),
              const SizedBox(height: kdouble10),
            ],
          ),
        ),
      ),
    );
  }
}
