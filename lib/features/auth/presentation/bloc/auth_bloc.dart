import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:homie_boy_restaurant_app/features/auth/model/user_model.dart';
import 'package:homie_boy_restaurant_app/features/auth/user_services/user_services.dart';
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
      emit(LoginLoadingState());

      Response response = await dio.post(
          'https://server-side-of-fooddeliveryapplication-2.onrender.com/restaurant/auth/login',
          data: {
            'phoneNumber': event.resPhone.trim(),
            'password': event.resPass.toString()
          });

      if (response.statusCode == 200) {
        final user = User.fromJson(response.data);
        log(user.token!);
        SecureStorage.writeSecureData(user.token!);
        await SharedPref.writeTokenInSharedPreferences(user.token!);

        emit(LoginSuccessState());
      }
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }
}
