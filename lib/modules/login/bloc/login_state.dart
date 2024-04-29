part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.loginSuccess = false,
    this.loading = false,
    this.error = false,
    this.msg = "",
  });
  final bool loginSuccess;
  final bool loading;
  final bool error;
  final String msg;

  LoginState copyWith({
    bool? loginSuccess,
    bool? loading,
    bool? error,
    String? msg,
  }) {
    return LoginState(
      loginSuccess: loginSuccess ?? this.loginSuccess,
      loading: loading ?? this.loading,
      error: error ?? this.error,
      msg: msg ?? this.msg,
    );
  }

  @override
  List<Object> get props => [
        loginSuccess,
        loading,
        error,
        msg,
      ];
}
