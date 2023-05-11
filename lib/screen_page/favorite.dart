import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Favorite(),
    ),
  );
}

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 22,
              color: Colors.lightGreen,
            )),
        backgroundColor: Colors.white,
        elevation: 3,
        title: const Text(
          'علاقه مندیها',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: 'hekayat',
            fontSize: 25,
            color: Colors.lightGreen,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'علاقه مندیها خالیه',
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontFamily: 'hekayat',
              fontSize: 22,
              color: Colors.black87,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
