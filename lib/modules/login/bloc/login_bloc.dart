import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:medi_track/modules/login/data/api.dart';
import 'package:medi_track/modules/login/data/models/login_request.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<Login>(_login);
  }

  Future<void> _login(Login event, Emitter<LoginState> emit) async {
    emit(
      state.copyWith(
        loading: true,
        error: false,
        msg: '',
      ),
    );
    final Map<String, dynamic> result = await LoginApi().login(
      event.loginRequest,
    );
    emit(
      state.copyWith(
        loading: false,
        loginSuccess: result["error"] ? false : true,
        error: result["error"],
        msg: result["message"],
      ),
    );
  }
}
