import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return FutureBuilder(
        future: getToken(),
        builder: (context, snapshot) {
          log(snapshot.data);
          
          return Container();
        });
  }

  Future getToken() async {

    SharedPreferences pref = await SharedPreferences.getInstance();    

  }
}

