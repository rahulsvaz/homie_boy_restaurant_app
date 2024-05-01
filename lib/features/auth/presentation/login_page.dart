import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homie_boy_restaurant_app/const/sized_box.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/widgets/loading_animation.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/widgets/login_button.dart';
import 'package:homie_boy_restaurant_app/features/auth/presentation/widgets/login_text_field.dart';
import 'package:homie_boy_restaurant_app/features/home_page/presentation/home_page.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool loading = false;

    TextEditingController mobileNumberController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
                (route) => false);
          }
        },
        builder: (context, state) {
          if (state is LoginLoadingState) {
            loading = true;
          }
          return Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Lottie.asset('assets/animations/login.json'),
                  ),
                  LoginTextField(
                    controller: mobileNumberController..text = '8880772200',
                    width: width,
                    hint: 'Mobile Number',
                  ),
                  const Height20(),
                  LoginTextField(
                    controller: passwordController..text = 'password1',
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
              LoadingAnimation(loading: loading),
            ],
          );
        },
      ),
    );
  }
}
