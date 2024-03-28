import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomSelect extends StatelessWidget {
  final String title;
  final String? svalue;
  final double margintop;
  final String hintText;
  final void Function(dynamic)? onChanged;
  final List<DropdownMenuItem> itemlist;

  const CustomSelect({
    Key? key,
    required this.title,
    this.svalue,
    required this.itemlist,
    required this.onChanged,
    required this.hintText,
    this.margintop = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: margintop),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: DropdownButton(
                      hint: Text(hintText),
                      value: svalue,
                      icon: const Visibility(
                          visible: false, child: Icon(Icons.arrow_downward)),
                      items: itemlist,
                      // [
                      //   DropdownMenuItem(
                      //     child: Text("530203B - Lapangan ke Pabrik"),
                      //     value: "lapangan_pabrik",
                      //   ),
                      //   DropdownMenuItem(
                      //     child: Text("530203B - Pabrik ke Lapangan"),
                      //     value: "pabrik_lapangan",
                      //   ),
                      // ],
                      onChanged: onChanged,
                      isExpanded:
                          true, //make true to take width of parent widget
                      underline: Container(), //empty line
                      style: blackText.copyWith(fontSize: 18),
                      dropdownColor: Colors.white,
                      iconEnabledColor: Colors.black, //Icon color
                    )))
          ],
        ));
  }
}

class CustomSelectV2 extends StatelessWidget {
  final String title;
  final String? svalue;
  final double margintop;
  final String hintText;
  final void Function(dynamic)? onChanged;
  final List<DropdownMenuItem> itemlist;

  const CustomSelectV2({
    Key? key,
    required this.title,
    this.svalue,
    required this.itemlist,
    required this.onChanged,
    required this.hintText,
    this.margintop = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 5),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: DropdownButton(
              hint: Text(hintText),
              value: svalue,
              icon: const Icon(Icons.arrow_drop_down),
              items: itemlist,
              onChanged: onChanged,
              isExpanded: true,
              underline: Container(),
              style: blackText.copyWith(fontSize: 17),
              dropdownColor: Colors.white,
              iconEnabledColor: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
