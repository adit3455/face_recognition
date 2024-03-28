import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomSelectSearch2 extends StatefulWidget {
  final String title;
  final String title2;
  final String? svalue;
  final void Function(dynamic) onChanged;
  final List<Map> itemlist;

  const CustomSelectSearch2({
    Key? key,
    required this.title,
    required this.title2,
    required this.svalue,
    required this.itemlist,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomSelectSearch2> createState() => _CustomSelectSearchState2();
}

class _CustomSelectSearchState2 extends State<CustomSelectSearch2> {
  @override
  void dispose() {
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
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: double.infinity,
          // padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownSearch(
            items: widget.itemlist,
            onChanged: widget.onChanged,
            itemAsString: (item) => item['value'],
            dropdownBuilder: (context, selectedItem) {
              Widget widgetText;
              if (widget.svalue != null) {
                widgetText = Text(
                  widget.svalue!,
                  style:
                      blackText.copyWith(fontSize: 17, fontWeight: mediumText),
                );
              } else {
                widgetText = Text(
                  widget.title2,
                  style:
                      blackText.copyWith(fontSize: 17, fontWeight: mediumText),
                );
              }

              return widgetText;
              // return Text(selectedItem.toString());
            },
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                hintText: widget.title2,
                contentPadding: const EdgeInsets.only(left: 20, top: 10),
                hintStyle: blackText.copyWith(
                  fontSize: 17,
                  fontWeight: mediumText,
                ),
              ),
            ),
            popupProps: const PopupPropsMultiSelection.menu(
              showSearchBox: true,
              searchFieldProps: TextFieldProps(
                decoration: InputDecoration(
                  hintText: "Cari data...",
                  hintStyle: TextStyle(fontSize: 13),
                ),
              ),
              favoriteItemProps: FavoriteItemProps(
                showFavoriteItems: true,
              ),
            ),
            // selectedItem: widget.svalue,
          ),
        ),
      ],
    );
  }
}
