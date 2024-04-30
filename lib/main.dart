import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/login_page.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: const MaterialApp(
        home: LoginPage(),
      ),
    );
  }
}
