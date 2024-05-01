



import 'package:flutter/material.dart';

class OnlineStatus extends StatefulWidget {
   bool switchButton;
   OnlineStatus({super.key,required this.switchButton});

  @override
  State<OnlineStatus> createState() => _OnlineStatusState();
}

class _OnlineStatusState extends State<OnlineStatus> {
  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.switchButton ? 'Online' : 'Offline',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color:   widget.switchButton ? Colors.green : Colors.red),
                ),
                Switch(
                    inactiveTrackColor: Colors.red,
                    inactiveThumbColor: Colors.black,
                    activeColor: Colors.green,
                    value:   widget.switchButton,
                    onChanged: (va) {
                        widget.switchButton = va;

                      setState(() {});
                    }),
              ],
            );
  }
}