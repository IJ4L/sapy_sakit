import 'package:cow_predict/core/themes/app_font.dart';
import 'package:cow_predict/presentation/widget/costume_button.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Center(
                child: Image.asset(
                  "assets/hero_login.png",
                  width: 300,
                  height: 170,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Spacer(),
            Text(
              'Welcome to Cow Predict',
              style: AppFont.bold.s20,
            ),
            const SizedBox(height: 6.0),
            Text(
              "Tukuternak telah berkerja sama dengan penjual-penjual di seluruh Indonesia untuk memasarkan Ternak mereka",
              style: AppFont.normal.s14,
            ),
            const SizedBox(height: 24.0),
            CostumeButton(
              textTitle: 'User',
              backgroundColor: Theme.of(context).colorScheme.secondary,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, "/homepage_user");
              },
            ),
            const SizedBox(height: 12.0),
            CostumeButton(
              textTitle: 'Admin',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/signin_admin");
              },
            ),
          ],
        ),
      ),
    );
  }
}
