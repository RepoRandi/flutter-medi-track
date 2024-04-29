import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home/pages/home.dart';
import 'package:medi_track/modules/login/bloc/login_bloc.dart';
import 'package:medi_track/modules/login/data/models/login_request.dart';
import 'package:medi_track/modules/register/pages/register.dart';
import 'package:medi_track/utils/themes/themes.dart';
import 'package:medi_track/utils/widgets/custom_primary_button.dart';
import 'package:medi_track/utils/widgets/custom_text_button.dart';
import 'package:medi_track/utils/widgets/custom_text_field.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailCtrl = TextEditingController();
    TextEditingController passwordCtrl = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hai, ',
                        style: GoogleFonts.montserrat(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.03,
                            color: title),
                      ),
                      Text(
                        'Selamat Datang',
                        style: GoogleFonts.montserrat(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.03,
                            color: title),
                      )
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Silahkan login untuk melanjutkan',
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: subTitle),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 101),
              child: Image.asset(
                'assets/images/riwayat_medis.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Column(
                children: [
                  CustomTextField(
                    label: 'Email',
                    hintText: 'Masukan email anda',
                    controller: emailCtrl,
                  ),
                  const SizedBox(height: 40.0),
                  CustomTextField(
                    label: 'Password',
                    hintText: 'Masukan password anda',
                    subLabel: 'Lupa Password anda ?',
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    controller: passwordCtrl,
                  ),
                  const SizedBox(height: 40.0),
                  BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                      if (state.loading) {
                        EasyLoading.show(status: 'Please wait...');
                      } else {
                        EasyLoading.dismiss();
                      }
                      if (!state.loading && state.error && state.msg != "") {
                        QuickAlert.show(
                          barrierDismissible: false,
                          disableBackBtn: true,
                          context: context,
                          type: QuickAlertType.error,
                          title: 'Oops...',
                          text: state.msg,
                          confirmBtnColor: primary,
                          confirmBtnText: "Ok",
                        );
                      }
                      if (state.loginSuccess) {
                        QuickAlert.show(
                          barrierDismissible: false,
                          disableBackBtn: true,
                          context: context,
                          type: QuickAlertType.success,
                          title: 'Success',
                          text: 'Login Successfully!',
                          confirmBtnColor: primary,
                          confirmBtnText: "Ok",
                          onConfirmBtnTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      return CustomPrimaryButton(
                          label: 'Login',
                          icon: Icons.arrow_right_alt,
                          onPressed: () {
                            context.read<LoginBloc>().add(Login(
                                loginRequest: LoginRequest(
                                    email: emailCtrl.text,
                                    password: passwordCtrl.text)));
                          });
                    },
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Belum punya akun ?',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: bebebe),
                      ),
                      CustomTextButton(
                          text: 'Daftar Sekarang',
                          onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()),
                              )),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  Text(
                    '©  SILK. all right reserved.',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: bebebe),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
