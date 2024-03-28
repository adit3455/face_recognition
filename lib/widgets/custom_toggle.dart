import 'package:flutter/material.dart';
//import 'package:transport_truck/shared/theme.dart';

// void setState(VoidCallback fn) {}

class CustomToggle extends StatefulWidget {
  const CustomToggle({
    Key? key,
  }) : super(key: key);

  @override
  _CustomToggle createState() => _CustomToggle();
}

class _CustomToggle extends State<CustomToggle> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            isSwitched = !isSwitched;
          });
        },
        child: Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
              //print(isSwitched);
            });
          },
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Colors.green,
        ));
  }
}
