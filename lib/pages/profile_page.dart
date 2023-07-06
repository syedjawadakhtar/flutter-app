import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/constants.dart';
import 'package:flutter_youtube/core/notifiers.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final Uri _url = Uri.parse('https://syedjawadakhtar.github.io');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proflie'),
      ),
      body: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          const SizedBox(
            height: kdouble20,
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Syed Jawad Akhtar'),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('syedjawadakhtar@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: const Text('syedjawadakhtar.github.io'),
            onTap: () async {
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (isDark != null) {
              return const Icon(Icons.light_mode);
            } else {
              return const Icon(Icons.dark_mode);
            }
          },
        ),
      ),
    );
  }
}
