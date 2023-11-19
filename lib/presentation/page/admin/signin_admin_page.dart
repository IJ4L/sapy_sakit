import 'package:cow_predict/presentation/widget/costume_button.dart';
import 'package:cow_predict/presentation/widget/costume_textformfield.dart';
import 'package:flutter/material.dart';

class SigninAdminPage extends StatelessWidget {
  const SigninAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController username = TextEditingController();
    final TextEditingController password = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          children: [
            CostumeTextFormField(
              textTitle: 'Username *',
              controller: username,
            ),
            const SizedBox(height: 12.0),
            CostumeTextFormField(
              textTitle: 'Password *',
              controller: password,
            ),
            const SizedBox(height: 24.0),
            CostumeButton(
              textTitle: "Masuk",
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
