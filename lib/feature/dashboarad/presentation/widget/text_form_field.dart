import 'package:flutter/material.dart';

class TextFormFieldWidget {
  field(
      {TextEditingController? controller,
      String? Function(String?)? validator,
      String? hintText}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
      controller: controller,
      validator: validator,
    );
  }
}

TextFormFieldWidget textFormField = TextFormFieldWidget();
