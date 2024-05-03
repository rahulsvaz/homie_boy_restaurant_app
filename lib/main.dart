import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/login_page.dart';
import 'package:homie_boy_restaurant_app/features/home_page/presentation/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final pref = await SharedPreferences.getInstance();
 
  runApp(MyApp(
    
  ));
}

class MyApp extends StatelessWidget {
  // final String authToken;
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {


    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        home: 
             const LoginPage()
           
      ),
    );
  }
}
