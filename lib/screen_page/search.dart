import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Mesearch(),
    ),
  );
}

class Mesearch extends StatelessWidget {
  const Mesearch({super.key});

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
          'جستوجو',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: 'hekayat',
            fontSize: 25,
            color: Colors.lightGreen,
          ),
        ),
        centerTitle: true,
      ),
      body: const Mywidgetserach(),
    );
  }
}

class Mywidgetserach extends StatefulWidget {
  const Mywidgetserach({super.key});

  @override
  State<Mywidgetserach> createState() => _MywidgetserachState();
}

class _MywidgetserachState extends State<Mywidgetserach> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        right: 15,
        left: 15,
        bottom: 10,
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(199, 230, 238, 230),
              borderRadius: BorderRadius.circular(7),
            ),
            child: TextField(
              cursorColor: Colors.green,
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.text,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'hekayat',
                fontSize: 18,
                color: Colors.grey.shade600,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: GestureDetector(
                  onTap: () {
                    debugPrint('ok');
                  },
                  child: const Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                ),
                hintTextDirection: TextDirection.rtl,
                hintText: 'جستوجو  ....',
                hintStyle: const TextStyle(
                  fontFamily: 'hekayat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
