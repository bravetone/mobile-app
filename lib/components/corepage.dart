import 'package:flutter/material.dart';
import 'package:shop_app/screens/chat/screens/home_page.dart';
import 'package:shop_app/screens/home/components/body.dart';
import 'package:shop_app/screens/profile/components/body.dart';

class CorePage extends StatefulWidget {
  const CorePage({Key? key}) : super(key: key);

  @override
  _CorePageState createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  int currentIndex = 0;
  void onChange(int index) {
    currentIndex = index;
  }

  List<Widget> _screens = [Body(), Container(), Container(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onChange,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "")
          ]),
    );
  }
}
