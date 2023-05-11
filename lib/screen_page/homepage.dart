import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_page/propage.dart';
import 'package:flutter_application_1/screen_page/storage.dart';
import './search.dart';
import './favorite.dart';

class HomePageone extends StatefulWidget {
  const HomePageone({super.key});

  @override
  State<HomePageone> createState() => _HomePageoneState();
}

class _HomePageoneState extends State<HomePageone> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        elevation: 10,
        isFloating: true,
        borderRadius: const Radius.circular(15),
        iconSize: 25.0,
        selectedColor: Colors.lightGreen,
        strokeColor: const Color.fromARGB(183, 230, 238, 230),
        unSelectedColor: const Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.favorite),
            title: const Text(
              "علاقه مندیها",
              style: TextStyle(
                fontFamily: 'hekayat',
                fontSize: 18,
              ),
            ),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.storage_rounded),
            title: const Text("دسته بندی",
                style: TextStyle(
                  fontFamily: 'hekayat',
                  fontSize: 18,
                )),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.search),
            title: const Text("جستوجو",
                style: TextStyle(
                  fontFamily: 'hekayat',
                  fontSize: 18,
                )),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 2) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Mesearch(),
                ),
              );
            } else if (index == 1) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Storage(),
                ),
              );
            } else if (index == 0) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Favorite(),
                ),
              );
            }
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        title: const Text(
          'دنیایه کتاب',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: 'hekayat',
            fontSize: 25,
            color: Colors.lightGreen,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.share,
          size: 26,
          color: Colors.lightGreen,
        ),
      ),
      body: const Widgetmy(),
    );
  }
}

class Widgetmy extends StatefulWidget {
  const Widgetmy({super.key});

  @override
  State<Widgetmy> createState() => _WidgetmyState();
}

class _WidgetmyState extends State<Widgetmy> {
  ScrollController controller = ScrollController();
  int bild = 5;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
            child: SingleChildScrollView(
              reverse: true,
              controller: controller,
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: const Color.fromARGB(183, 230, 238, 230),
                        ),
                        child: const Center(
                          child: Text(
                            'کتاب های صوتی',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'hekayat',
                              fontSize: 20,
                              color: Colors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: const Color.fromARGB(183, 230, 238, 230),
                        ),
                        child: const Center(
                          child: Text(
                            'کتاب های رایگان',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'hekayat',
                              fontSize: 20,
                              color: Colors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: const Color.fromARGB(183, 230, 238, 230),
                        ),
                        child: const Center(
                          child: Text(
                            'کتاب های فلسفی',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'hekayat',
                              fontSize: 18,
                              color: Colors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: const Color.fromARGB(183, 230, 238, 230),
                        ),
                        child: const Center(
                          child: Text(
                            'کتاب های عاشقانه',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'hekayat',
                              fontSize: 18,
                              color: Colors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 350,
            color: Colors.green,
            child: Stack(
              children: <Widget>[
                const Positioned(
                  right: 20,
                  top: 10,
                  child: Text(
                    'در کمترین زمان\n بخوانید و بشنوید',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'hekayat',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Positioned(
                  top: 25,
                  left: 20,
                  child: Text(
                    'مشاهده همه   >  ',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'hekayat',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  child: ListView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 160,
                          top: 70,
                          bottom: 15,
                        ),
                        child: Column(
                          textDirection: TextDirection.rtl,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const ProPage(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                  child: Image.asset(
                                    '../assets/image/haram.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 6.0, bottom: 2),
                              child: Text(
                                'حرامسرایه قضافی',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'hekayat',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 1,
                              color: Colors.white,
                            ),
                            Row(
                              textDirection: TextDirection.rtl,
                              children: const <Widget>[
                                Text(
                                  '   45,000  ت',
                                  style: TextStyle(
                                    fontFamily: 'hekayat',
                                    fontSize: 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                    fontFamily: 'hekayat',
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8,
                          top: 70,
                          bottom: 15,
                        ),
                        child: Column(
                          textDirection: TextDirection.rtl,
                          children: [
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                child: Image.asset(
                                  '../assets/image/Englab.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 6.0, bottom: 2),
                              child: Text(
                                'انقلاب عادتهای کوچک',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'hekayat',
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 1,
                              color: Colors.white,
                            ),
                            Row(
                              textDirection: TextDirection.rtl,
                              children: const <Widget>[
                                Text(
                                  '   22,000  ت',
                                  style: TextStyle(
                                    fontFamily: 'hekayat',
                                    fontSize: 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '2.4',
                                  style: TextStyle(
                                    fontFamily: 'hekayat',
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8,
                          top: 70,
                          bottom: 15,
                        ),
                        child: Column(
                          textDirection: TextDirection.rtl,
                          children: [
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                child: Image.asset(
                                  '../assets/image/sad.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 6.0, bottom: 2),
                              child: Text(
                                'صد سال تنهایی',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'hekayat',
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 1,
                              color: Colors.white,
                            ),
                            Row(
                              textDirection: TextDirection.rtl,
                              children: const <Widget>[
                                Text(
                                  '   5,000  ت',
                                  style: TextStyle(
                                    fontFamily: 'hekayat',
                                    fontSize: 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    fontFamily: 'hekayat',
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 12.0, right: 12, top: 10, bottom: 10),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  // width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(183, 230, 238, 230),
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: Text(
                    'پرفروش ترینها',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'hekayat',
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 212,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10.0,
                left: 10.0,
                top: 5,
                bottom: 10,
              ),
              child: ListView(
                reverse: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            '../assets/image/hit.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'آیشمن در اورشلیم',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'hekayat',
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: const <Widget>[
                          Text(
                            '   55,000  ت',
                            style: TextStyle(
                              fontFamily: 'hekayat',
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            '../assets/image/frecans.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'فرکانس خلقت',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'hekayat',
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: const <Widget>[
                          Text(
                            '   105,000  ت',
                            style: TextStyle(
                              fontFamily: 'hekayat',
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            '../assets/image/nages.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'قدرت شروع ناقص',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'hekayat',
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: const <Widget>[
                          Text(
                            '   35,000  ت',
                            style: TextStyle(
                              fontFamily: 'hekayat',
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            '../assets/image/ahmal.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'غلبه بر اهمال کاری',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'hekayat',
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: const <Widget>[
                          Text(
                            '   66,000  ت',
                            style: TextStyle(
                              fontFamily: 'hekayat',
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            '../assets/image/bihad.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'بی حد و مرض',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'hekayat',
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: const <Widget>[
                          Text(
                            '   87,000  ت',
                            style: TextStyle(
                              fontFamily: 'hekayat',
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
