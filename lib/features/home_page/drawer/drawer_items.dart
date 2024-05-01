


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homie_boy_restaurant_app/const/palette.dart';

class DrawerItems extends StatelessWidget {
  final IconData icon;
  final double width;
  final String label;
  final VoidCallback? callback;
  const DrawerItems(
      {super.key,
      required this.width,
      required this.icon,
      required this.label,
      this.callback});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: width * 0.08,
          ),
          Icon(
            icon,
            size: width * 0.07,
            color: Palette.boxBgColor,
          ),
          
          SizedBox(
            width: width * 0.05,
          ),
          Text(
            label,
            style: GoogleFonts.josefinSans(
              color: Colors.black87,
              fontSize: width * 0.04,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
