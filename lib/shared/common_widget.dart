import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyWidget extends StatelessWidget {
  String text;
  EmptyWidget({
    Key? key,
    required this.text,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).padding.top,
      child: Center(
        child: Column(
          children: [
            Lottie.asset(
              'assets/lotties/empty-icon.json',
              width: 300,
            ),
            const Text("Data tidak tersedia")
          ],
        ),
      ),
    );
  }
}

class EmptyWidget2 extends StatelessWidget {
  String text;
  EmptyWidget2({
    Key? key,
    required this.text,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset(
            'assets/lotties/empty-icon.json',
            width: 300,
          ),
          const Text("Data tidak tersedia")
        ],
      ),
    );
  }
}
