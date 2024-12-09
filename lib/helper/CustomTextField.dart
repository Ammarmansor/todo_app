import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.iconData,
    required this.label,
    required this.hintText,
    this.onSubmitted,
    this.controller,
    this.onChanged,
  });
  final void Function(String)? onChanged;
  final IconButton? iconData;
  final String label, hintText;
  final Function(String)? onSubmitted;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        label: Text(label),
        prefixIcon: iconData,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
