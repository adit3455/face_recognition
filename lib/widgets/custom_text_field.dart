import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final String? initialValue;
  final TextEditingController controller;

  const CustomTextField(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.controller,
      this.initialValue = '',
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
            cursorColor: cBlackColor,
            controller: controller,
            obscureText: obscureText,
            keyboardType: TextInputType.text,
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

class CustomTextFieldV2 extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final String? initialValue;
  final TextEditingController controller;

  const CustomTextFieldV2(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.controller,
      this.initialValue = '',
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          cursorColor: cBlackColor,
          controller: controller,
          obscureText: obscureText,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
    );
  }
}
