

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final bool switchButton;
  const CustomAppBar({super.key, required this.switchButton});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        switchButton ? 'Online' : 'Offline',
        style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: switchButton ? Colors.green : Colors.red),
      ),
    );
  }
}
