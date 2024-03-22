import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/pages/presensi_mandoran.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AbsensiKemandoran(),
                    )),
                child: const Text("Navigate to Mandoran Presensi Pages")),
          )
        ],
      ),
    );
  }
}
