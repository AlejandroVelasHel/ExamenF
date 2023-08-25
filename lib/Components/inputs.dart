import 'package:flutter/material.dart';

class InputsComponent extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const InputsComponent({
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: label,
          ),
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}
