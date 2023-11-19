import 'package:cow_predict/core/themes/app_font.dart';
import 'package:flutter/material.dart';

class KesehatanTernakPage extends StatelessWidget {
  const KesehatanTernakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kesehatan Ternak",
          style: AppFont.semiBold.s20.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: const Column(
        children: [
          
        ],
      ),
    );
  }
}
