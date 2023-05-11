import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: ProPage(),
    ),
  );
}

class ProPage extends StatefulWidget {
  const ProPage({super.key});

  @override
  State<ProPage> createState() => _ProPageState();
}

class _ProPageState extends State<ProPage> {
  bool favoritebool = false;

  TextStyle stile = const TextStyle(
    fontFamily: 'hekayat',
    fontSize: 27,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  color: Colors.white,
                  child: Image.asset(
                    '../assets/image/gajar.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white70,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 28,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        favoritebool = !favoritebool;
                        if (favoritebool == true) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.green,
                              behavior: SnackBarBehavior.floating,
                              content: Text(
                                'به علاقه مندی ها اضافه شد',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'hekayat',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        } else if (favoritebool == false) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.red,
                              behavior: SnackBarBehavior.floating,
                              content: Text(
                                'از علاقه مندی ها حذف شد',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'hekayat',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        }
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: favoritebool
                          ? const Icon(
                              Icons.favorite,
                              size: 30,
                              color: Colors.green,
                            )
                          : const Icon(
                              Icons.favorite_border,
                              size: 28,
                              color: Colors.green,
                            ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      SizedBox(
                        height: 33,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.green,
                      ),
                      Text(
                        '4.2\n از 7 رای',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'hekayat',
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      SizedBox(
                        height: 27,
                      ),
                      Icon(
                        Icons.storage_rounded,
                        size: 20,
                        color: Colors.green,
                      ),
                      Text(
                        'رمان ایرانی و تاریخی',
                        style: TextStyle(
                          fontFamily: 'hekayat',
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      SizedBox(
                        height: 27,
                      ),
                      Icon(
                        Icons.share,
                        size: 20,
                        color: Colors.green,
                      ),
                      Text(
                        'ارسال به دوستان',
                        style: TextStyle(
                          fontFamily: 'hekayat',
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
