import 'package:flutter/material.dart';
import 'package:modal_searchbox/modal_searchbox.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Storage(),
    ),
  );
}

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _FavoriteState();
}

class _FavoriteState extends State<Storage> {
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
          'دسته بندی',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: 'hekayat',
            fontSize: 25,
            color: Colors.lightGreen,
          ),
        ),
        centerTitle: true,
      ),
      body: const Storeage(),
    );
  }
}

class Storeage extends StatefulWidget {
  const Storeage({super.key});

  @override
  State<Storeage> createState() => _StoreageState();
}

class _StoreageState extends State<Storeage> {
  final listmy = [
    "دراماتیک",
    "ترسناک",
    "عاشقانه",
    "جنایی",
    "پلیسی",
    "رمانتیک",
    "روانشناسی",
    "رمان ایرانی و تاریخی"
  ];
  String selectedCountry = "Indonesia";
  List<String> selectedMultipleCountry = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        20,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Card(
              color: Color.fromARGB(155, 230, 238, 230),
              elevation: 0,
              child: ListTile(
                leading: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 35,
                ),
                iconColor: Colors.lightGreen,
                trailing: Text(
                  'عاشقانه',
                  style: TextStyle(
                    fontFamily: 'hekayat',
                    fontSize: 25,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Card(
              color: Color.fromARGB(155, 230, 238, 230),
              elevation: 0,
              child: ListTile(
                leading: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 35,
                ),
                iconColor: Colors.lightGreen,
                trailing: Text(
                  'جنایی',
                  style: TextStyle(
                    fontFamily: 'hekayat',
                    fontSize: 25,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Card(
              color: Color.fromARGB(131, 233, 235, 233),
              elevation: 0,
              child: ListTile(
                leading: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 35,
                ),
                iconColor: Colors.lightGreen,
                trailing: Text(
                  'پلیسی',
                  style: TextStyle(
                    fontFamily: 'hekayat',
                    fontSize: 25,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Card(
              color: Color.fromARGB(131, 233, 235, 233),
              elevation: 0,
              child: ListTile(
                leading: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 35,
                ),
                iconColor: Colors.lightGreen,
                trailing: Text(
                  'رمانتیک',
                  style: TextStyle(
                    fontFamily: 'hekayat',
                    fontSize: 25,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Card(
              color: Color.fromARGB(131, 233, 235, 233),
              elevation: 0,
              child: ListTile(
                leading: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 35,
                ),
                iconColor: Colors.lightGreen,
                trailing: Text(
                  'دراماتیک',
                  style: TextStyle(
                    fontFamily: 'hekayat',
                    fontSize: 25,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Card(
              color: Color.fromARGB(131, 233, 235, 233),
              elevation: 0,
              child: ListTile(
                leading: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 35,
                ),
                iconColor: Colors.lightGreen,
                trailing: Text(
                  'ترسناک',
                  style: TextStyle(
                    fontFamily: 'hekayat',
                    fontSize: 25,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Card(
              color: Color.fromARGB(131, 233, 235, 233),
              elevation: 0,
              child: ListTile(
                leading: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 35,
                ),
                iconColor: Colors.lightGreen,
                trailing: Text(
                  'روانشناسی',
                  style: TextStyle(
                    fontFamily: 'hekayat',
                    fontSize: 25,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ModalSearchbox(
                selectedItemColor: Colors.green,
                valueTextstyle: const TextStyle(
                  fontFamily: 'hekayat',
                  fontSize: 24,
                  color: Colors.green,
                ),
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(20),
                  left: Radius.circular(20),
                ),
                label: "انتخاب دسته بندی",
                labelTextstyle: const TextStyle(
                  fontFamily: 'hekayat',
                  fontSize: 24,
                  color: Colors.green,
                ),
                isMultipleSelect: true,
                selectedMutipleValue: selectedMultipleCountry,
                list: listmy,
                onChanged: (v) {
                  selectedMultipleCountry = v;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
