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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => {
                Navigator.pushNamed(
                  context,
                  "/homepage_user/kesehatan_ternak/diagnosa",
                )
              },
              child: Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 24,
                  top: 15,
                  bottom: 15,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Diagnosa Penyakit",
                      style: AppFont.semiBold.s18.copyWith(color: Colors.white),
                    ),
                    const Center(
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () => {
                Navigator.pushNamed(
                  context,
                  "/homepage_user/kesehatan_ternak/data_penyakit",
                )
              },
              child: Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 24,
                  top: 15,
                  bottom: 15,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jenis Penyakit",
                      style: AppFont.semiBold.s18.copyWith(color: Colors.white),
                    ),
                    const Center(
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
