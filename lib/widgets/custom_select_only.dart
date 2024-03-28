import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomSelectOnly extends StatefulWidget {
  final List<String> itemlist;
  final String textHint;

  const CustomSelectOnly({
    Key? key,
    required this.textHint,
    required this.itemlist,
  }) : super(key: key);

  @override
  State<CustomSelectOnly> createState() => _CustomSelectOnlyState();
}

class _CustomSelectOnlyState extends State<CustomSelectOnly> {
  String svalue = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButton(
          value: svalue == "" ? null : svalue,
          hint: Text(widget.textHint),
          items: widget.itemlist.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              svalue = value!;
            });
          },
          isExpanded: true, //make true to take width of parent widget
          underline: Container(), //empty line
          style: blackText.copyWith(fontSize: 18),
          dropdownColor: Colors.white,
          iconEnabledColor: Colors.black, //Icon color
        ),
      ),
    );
  }
}
