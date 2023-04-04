import 'package:credpal_assignment/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({
    super.key,
    this.controller,
    this.keyboard,
    this.labelText,
    this.obstsructText = false,
    this.icon,
    this.validator,
    this.inputFormatters,
    this.suffixIcon,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.onTap,
    this.lableStyle,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? labelText;
  final TextInputType? keyboard;
  final IconData? icon;
  final FormFieldValidator<String>? validator;
  final bool obstsructText;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final Function()? onTap;
  final void Function(String)? onChanged;
  final TextStyle? lableStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      onChanged: onChanged,
      controller: controller,
      obscureText: obstsructText,
      validator: validator,
      onTap: onTap,
      inputFormatters: inputFormatters,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: SCAFFOLD_COLOR,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        border: const OutlineInputBorder(),
        labelText: labelText,
        labelStyle: lableStyle,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints,
      ),
    );
  }
}
