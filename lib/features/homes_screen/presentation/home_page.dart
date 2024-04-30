import 'package:flutter/material.dart';
import 'package:homie_boy_restaurant_app/const/sized_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
       const    Height20(),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                switchButton ? 'Online' : 'Offline',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: switchButton ? Colors.green : Colors.red),
              ),
              Switch(
                  inactiveTrackColor: Colors.red,
                  inactiveThumbColor: Colors.black,
                  activeColor: Colors.green,
                  value: switchButton,
                  onChanged: (va) {
                    switchButton = va;

                    setState(() {});
                    print(switchButton);
                  }),
            ],
          )
        ],
      ),
    );
  }
}
