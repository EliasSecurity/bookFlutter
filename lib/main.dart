import 'package:flutter/material.dart';
import 'package:splash_view/splash_view.dart';
// import './screen_page/firstpage.dart';
import './screen_page/homepage.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green.shade800,
        body: const PageBpdy(),
      ),
    ),
  );
}

class PageBpdy extends StatefulWidget {
  const PageBpdy({super.key});

  @override
  State<PageBpdy> createState() => _PageBpdyState();
}

class _PageBpdyState extends State<PageBpdy> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const PageHome(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashView(
      backgroundColor: Colors.white,
      logo: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 260,
          child: Image.asset(
            '../assets/image/book.png',
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
      loadingIndicator: const CircularProgressIndicator(
        backgroundColor: Colors.black87,
        color: Colors.grey,
      ),
    );
  }
}

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: HomePageone(),
    );
  }
}
