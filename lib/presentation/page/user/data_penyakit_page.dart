import 'package:cow_predict/core/themes/app_font.dart';
import 'package:cow_predict/presentation/cubit/check_diase/check_diase_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataPenyaktiPage extends StatelessWidget {
  const DataPenyaktiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final checkDiase = context.read<CheckDiaseCubit>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: Text(
          "Data Penyakit",
          style: AppFont.semiBold.s20.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => {Navigator.pop(context), checkDiase.removeChoice()},
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<CheckDiaseCubit, int>(
          builder: (context, state) {
            return ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => checkDiase.addChoice(index),
                  child: Container(
                    height: state == index ? 120 : 60,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 15);
              },
              itemCount: 5,
            );
          },
        ),
      ),
    );
  }
}
