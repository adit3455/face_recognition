import 'package:flutter/material.dart';
import '../../shared/theme.dart';

// void setState(VoidCallback fn) {}

class BottomMenu extends StatefulWidget {
  const BottomMenu({
    Key? key,
  }) : super(key: key);

  @override
  _BottomMenu createState() => _BottomMenu();
}

class _BottomMenu extends State<BottomMenu> {
  int _selectedIndex = 0; //New

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 10,
      selectedIconTheme: IconThemeData(color: cPrimaryColor, size: 30),
      selectedItemColor: cPrimaryColor,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.article),
          label: 'Ringkasan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.topic),
          label: 'Riwayat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Menu',
        ),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: cMediumBlack,
      showUnselectedLabels: true, //New
      onTap: _onItemTapped,
    );
  }
}
