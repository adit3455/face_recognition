import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

Future showAlertAsking({
  required BuildContext context,
  required String title,
  required String content,
}) async {
  final result = await showDialog<bool?>(
    context: context,
    builder: (context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.all(10),
        alignment: Alignment.bottomCenter,
        title: Text(title),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        content: Builder(
          builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(content),
            );
          },
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: cRedColor,
            ),
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('Tidak', style: whiteText),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: cPrimaryColor,
            ),
            child: Text('Ya', style: whiteText),
          ),
        ],
      );
    },
  );

  return result ?? false;
}
