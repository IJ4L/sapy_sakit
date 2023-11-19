import 'package:cow_predict/core/themes/app_font.dart';
import 'package:flutter/material.dart';

class DiagnosaPage extends StatelessWidget {
  const DiagnosaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Diagnosa",
          style: AppFont.semiBold.s20.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.restart_alt_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/homepage_user/kesehatan_ternak/diagnosa/hasil_diagnosa",
              );
            },
            icon: const Icon(
              Icons.start,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xffeeeeee),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
