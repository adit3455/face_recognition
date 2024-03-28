import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomNumberField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final String? initialValue;
  final TextEditingController controller;
  final bool readOnly;

  const CustomNumberField(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.controller,
      this.initialValue = '',
      this.readOnly = false,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            //initialValue: initialValue,
            readOnly: readOnly,
            cursorColor: cBlackColor,
            controller: controller,
            obscureText: obscureText,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: hintText,
              suffixIcon: (obscureText)
                  ? const IconButton(
                      icon: Icon(
                        //_passwordVisible? Icons.visibility:Icons.visibility_off,
                        Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: null,
                    )
                  : null,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: cPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
