import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/constants.dart';
import 'package:flutter_youtube/pages/home_page.dart';

import '../class/item_class.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Snackbar'),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              icon: const Icon(Icons.info))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Image.asset(widget.box.imagePath),
            Wrap(
              spacing: kdouble10,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 25;
                    });
                  },
                  child: const Text('Small title'),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 35;
                    });
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  child: const Text('Medium title'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 50;
                    });
                  },
                  child: const Text('Large title'),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 200;
                    });
                  },
                  child: const Text('Huge title'),
                ),
              ],
            ),
            FittedBox(
              child: Text(
                widget.box.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSizeCustom,
                ),
              ),
            ),
            const SizedBox(
              height: kdouble10,
            ),
            const Text(
              travelDescription,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ]),
        ),
      ),
    );
  }
}
