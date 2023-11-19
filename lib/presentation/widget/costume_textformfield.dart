import 'package:cow_predict/core/themes/app_font.dart';
import 'package:flutter/material.dart';

class CostumeTextFormField extends StatelessWidget {
  const CostumeTextFormField({
    super.key,
    required this.textTitle,
    required this.controller,
  });

  final String textTitle;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(textTitle, style: AppFont.semiBold.s16),
        const SizedBox(height: 8.0),
        TextFormField(
          controller: controller,
          cursorColor: Theme.of(context).colorScheme.secondary,
          decoration: InputDecoration(
            fillColor: const Color(0xfff8f8f8),
            filled: true,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 18.0,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0xffdedede),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0xffdedede),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
