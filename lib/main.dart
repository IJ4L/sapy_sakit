import 'package:cow_predict/presentation/cubit/check_diase/check_diase_cubit.dart';
import 'package:cow_predict/presentation/cubit/choice_diase/choice_diase_cubit.dart';
import 'package:cow_predict/presentation/page/admin/signin_admin_page.dart';
import 'package:cow_predict/presentation/page/signin_page.dart';
import 'package:cow_predict/presentation/page/user/data_penyakit_page.dart';
import 'package:cow_predict/presentation/page/user/data_peternak_page.dart';
import 'package:cow_predict/presentation/page/user/diagnosa_page.dart';
import 'package:cow_predict/presentation/page/user/hasil_diagnosa_page.dart';
import 'package:cow_predict/presentation/page/user/home_page_user.dart';
import 'package:cow_predict/presentation/page/user/kesehatan_ternak_page.dart';
import 'package:cow_predict/presentation/page/user/tambah_data_peternak_page.dart';
import 'package:cow_predict/presentation/page/user/tentang_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ChoiceDiaseCubit()),
        BlocProvider(create: (_) => CheckDiaseCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            background: Colors.white,
            secondary: const Color(0xff224d57),
          ),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (_) => const SigninPage(),
          "/signin_admin": (_) => const SigninAdminPage(),
          "/homepage_user": (_) => const HomePageUser(),
          "/homepage_user/data_peternak": (_) => const DataPeternakPage(),
          "/homepage_user/data_peternak/tambah_data_peternak": (_) =>
              const TambahDataPeternakPage(),
          "/homepage_user/kesehatan_ternak": (_) => const KesehatanTernakPage(),
          "/homepage_user/kesehatan_ternak/diagnosa": (_) =>
              const DiagnosaPage(),
          "/homepage_user/kesehatan_ternak/diagnosa/hasil_diagnosa": (_) =>
              const HasilDiagnosaPage(),
          "/homepage_user/kesehatan_ternak/data_penyakit": (_) =>
              const DataPenyaktiPage(),
          "/homepage_user/tentang": (_) => const TentangPage(),
        },
      ),
    );
  }
}
