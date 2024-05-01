


import 'package:flutter/material.dart';
import 'package:homie_boy_restaurant_app/features/home_page/drawer/drawer_items.dart';
import 'package:homie_boy_restaurant_app/features/home_page/presentation/online_status.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.switchButton,
    required this.width,
  });

  final bool switchButton;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
         OnlineStatus(switchButton: switchButton),
         const SizedBox(
            height: 30,
          ),
          DrawerItems(
              width: width, icon: Icons.no_food_rounded, label: 'Add Item')
        ],
      ),
    );
  }
}
