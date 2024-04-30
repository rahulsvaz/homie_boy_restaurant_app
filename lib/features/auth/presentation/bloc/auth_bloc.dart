import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginButtonClickedEvent>(_loginUser);
  }

  FutureOr<void> _loginUser(
      LoginButtonClickedEvent event, Emitter<AuthState> emit) async {
    Dio dio = Dio();

    try {
      Response response = await dio.post(
          'https://server-side-of-fooddeliveryapplication-2.onrender.com/restaurant/auth/login',
          data: {
            'phoneNumber':event.resPhone,
            'password': event.resPass
          });
      if (response.statusCode == 200) {
        log(
          response.toString(),
        );
      }
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }
}
