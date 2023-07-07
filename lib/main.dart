import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/notifiers.dart';
import 'package:flutter_youtube/pages/home_page.dart';
import 'package:flutter_youtube/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      // to listen isDarkModeNotifier you have to use ValueListenableBuidler
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: isDark != null ? Brightness.light : Brightness.dark,
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
