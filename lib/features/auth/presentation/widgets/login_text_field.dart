
import 'package:flutter/material.dart';
import 'package:homie_boy_restaurant_app/const/palette.dart';

class LoginTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  const LoginTextField({
    super.key,
    required this.width,
    required this.hint,
    required this.controller,
  });

  final double width;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}
class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: widget.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Palette.textfieldBgColor),
      child: TextFormField(
        controller: widget.controller,
        cursorColor: Colors.black12,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 10),
            hintText: widget.hint,
            border: InputBorder.none),
      ),
    );
  }
}
