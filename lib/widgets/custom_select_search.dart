import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomSelectSearch extends StatefulWidget {
  final String title;
  final String title2;
  final String? svalue;
  // double? margintop;
  final void Function(dynamic) onChanged;
  final List<DropdownMenuItem<String>>? itemlist;
  // final List<String>? itemsearch;

  const CustomSelectSearch({
    Key? key,
    required this.title,
    required this.title2,
    required this.svalue,
    required this.itemlist,
    required this.onChanged,
    // required this.itemsearch,
    // this.margintop = 30,
  }) : super(key: key);

  @override
  State<CustomSelectSearch> createState() => _CustomSelectSearchState();
}

class _CustomSelectSearchState extends State<CustomSelectSearch> {
  @override

  // final List<String> items = [
  //   'A_Item1',
  //   'A_Item2',
  //   'A_Item3',
  //   'A_Item4',
  //   'B_Item1',
  //   'B_Item2',
  //   'B_Item3',
  //   'B_Item4',
  // ];

  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title,
            textAlign: TextAlign.left,
            style: TextStyle(
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
            width: double.infinity,
            padding: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
            child: DropdownButton2<String>(
              underline: SizedBox(),
              isExpanded: true,
              items: widget.itemlist,
              // items: items
              //     .map((item) => DropdownMenuItem(
              //           value: item,
              //           child: Text(
              //             item,
              //             style: const TextStyle(
              //               fontSize: 14,
              //             ),
              //           ),
              //         ))
              //     .toList(),
              value: widget.svalue,
              // onChanged: (value) {
              //   setState(() {
              //     selectedValue = value;
              //   });
              // },
              onChanged: widget.onChanged,
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 40,
                width: double.infinity,
              ),
              hint: Text(
                widget.title2,
                style: TextStyle(
                  fontSize: 16,
                  color: cBlackColor,
                ),
              ),
              dropdownStyleData: const DropdownStyleData(
                maxHeight: 400,
                isOverButton: false,
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
              ),
              dropdownSearchData: DropdownSearchData(
                searchController: textEditingController,
                searchInnerWidgetHeight: 50,
                searchInnerWidget: Container(
                  height: 50,
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 4,
                    right: 8,
                    left: 8,
                  ),
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    controller: textEditingController,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      hintText: 'Cari data...',
                      hintStyle: const TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                searchMatchFn: (item, searchValue) {
                  return item.child
                      .toString()
                      .toLowerCase()
                      .contains(searchValue);
                  // || item.value.toString().toLowerCase().contains(searchValue);
                },
              ),
              //This to clear the search value when you close the menu
              onMenuStateChange: (isOpen) {
                if (!isOpen) {
                  textEditingController.clear();
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
