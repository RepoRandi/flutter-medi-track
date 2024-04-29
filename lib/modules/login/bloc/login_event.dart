part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class Login extends LoginEvent {
  final LoginRequest loginRequest;

  const Login({
    required this.loginRequest,
  });
}
