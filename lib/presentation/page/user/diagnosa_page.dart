import 'package:cow_predict/core/themes/app_font.dart';
import 'package:cow_predict/presentation/cubit/choice_diase/choice_diase_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiagnosaPage extends StatelessWidget {
  const DiagnosaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final choiceDiaseCubit = context.read<ChoiceDiaseCubit>();

    void checkChoice(int index) {
      if (choiceDiaseCubit.state.contains(index)) {
        choiceDiaseCubit.removeChoice(index);
      } else if (choiceDiaseCubit.state.length == 3) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            duration: Duration(seconds: 1),
            content: Text("Pilih maksimal 3 gejala"),
          ),
        );
      } else {
        choiceDiaseCubit.addChoice(index);
      }
    }

    void reset() {
      choiceDiaseCubit.reset();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1),
          content: Text("Berhasil Mereset Pilihan"),
        ),
      );
    }

    void diagnosa() {
      if (choiceDiaseCubit.state.length >= 2) {
        Navigator.pushNamed(
          context,
          "/homepage_user/kesehatan_ternak/diagnosa/hasil_diagnosa",
        );
        choiceDiaseCubit.reset();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            duration: Duration(seconds: 1),
            content: Text("Pilih Minimal 2 gejala"),
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Diagnosa",
          style: AppFont.semiBold.s20.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => {Navigator.pop(context), choiceDiaseCubit.reset()},
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () => {reset()},
            icon: const Icon(
              Icons.restart_alt_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () => {diagnosa()},
            icon: const Icon(
              Icons.start,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: BlocBuilder<ChoiceDiaseCubit, List<int>>(
          builder: (context, state) {
            return ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => {checkChoice(index)},
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: choiceDiaseCubit.state.contains(index)
                          ? Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.1)
                          : const Color(0xfff8f8f8),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: choiceDiaseCubit.state.contains(index)
                            ? Theme.of(context).colorScheme.secondary
                            : const Color(0xffeeeeee),
                      ),
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
            );
          },
        ),
      ),
    );
  }
}
