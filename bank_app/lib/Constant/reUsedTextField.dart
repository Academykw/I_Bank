import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Themes.dart';

class ReUsedTextField extends StatelessWidget {
  ReUsedTextField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    required this.onChanged,
  });

  // passing the required properties from the textfield
  final TextInputType keyboardType;
  final String hintText;
  final TextEditingController controller;
  final void Function(String) onChanged; 


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            focusColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(
              color: const Color.fromARGB(255, 104, 104, 104),
            ),
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            fillColor: Colors.white,
          ),
          onChanged: onChanged,
        ),
        SizedBox(height: 2.h),
      ],
    );
  }
}

