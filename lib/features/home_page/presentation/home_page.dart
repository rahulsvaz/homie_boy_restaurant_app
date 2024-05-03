import 'package:flutter/material.dart';
import 'package:homie_boy_restaurant_app/features/home_page/presentation/ap_drawer.dart';
import 'package:homie_boy_restaurant_app/features/home_page/presentation/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchButton = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: AppDrawer(switchButton: switchButton, width: width),
      appBar: PreferredSize(
        preferredSize: Size(width, height * 0.05),
        child: CustomAppBar(switchButton: switchButton),
      ),
     
    );
  }
}
