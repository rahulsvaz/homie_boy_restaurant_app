import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homie_boy_restaurant_app/const/sized_box.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/widgets/login_button.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/widgets/login_text_field.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController mobileNumberController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset('assets/animations/login.json'),
            ),
            LoginTextField(
              controller: mobileNumberController,
              width: width,
              hint: 'Mobile Number',
            ),
            const Height20(),
            LoginTextField(
              controller: passwordController,
              width: width,
              hint: 'Password',
            ),
            const Height20(),
            GestureDetector(
              onTap: () async {
                context.read<AuthBloc>().add(
                      LoginButtonClickedEvent(
                          resPhone: mobileNumberController.text,
                          resPass: passwordController.text),
                    );
              },
              child: LoginButton(width: width),
            )
          ],
        ),
      ),
    );
  }
}
