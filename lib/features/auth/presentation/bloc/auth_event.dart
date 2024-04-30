part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginButtonClickedEvent extends AuthEvent {
  final String resPhone;
  final String resPass;
  const LoginButtonClickedEvent({required this.resPhone,required this.resPass});
    @override
  List<Object> get props => [resPhone,resPass];

}
