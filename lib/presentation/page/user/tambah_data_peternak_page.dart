import 'package:cow_predict/core/themes/app_font.dart';
import 'package:cow_predict/presentation/widget/costume_button.dart';
import 'package:cow_predict/presentation/widget/costume_textformfield.dart';
import 'package:flutter/material.dart';

class TambahDataPeternakPage extends StatelessWidget {
  const TambahDataPeternakPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController namaPeternak = TextEditingController();
    final TextEditingController umurPeternak = TextEditingController();
    final TextEditingController namaDesa = TextEditingController();
    final TextEditingController alamat = TextEditingController();
    final TextEditingController jumlahTernak = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Tambah Data Peternak",
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            CostumeTextFormField(
              textTitle: 'Nama Peternak *',
              controller: namaPeternak,
            ),
            const SizedBox(height: 12.0),
            CostumeTextFormField(
              textTitle: 'Umur Peternak *',
              controller: umurPeternak,
            ),
            const SizedBox(height: 12.0),
            CostumeTextFormField(
              textTitle: 'Nama Desa *',
              controller: namaDesa,
            ),
            const SizedBox(height: 12.0),
            CostumeTextFormField(
              textTitle: 'Alamat *',
              controller: alamat,
            ),
            const SizedBox(height: 12.0),
            CostumeTextFormField(
              textTitle: 'Jumlah Ternak *',
              controller: jumlahTernak,
            ),
            const SizedBox(height: 25.0),
            CostumeButton(
              textTitle: "Simpan",
              backgroundColor: Theme.of(context).colorScheme.secondary,
              textColor: Colors.white,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
