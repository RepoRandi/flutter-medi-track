import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/login/pages/login.dart';
import 'package:medi_track/utils/themes/themes.dart';
import 'package:medi_track/utils/widgets/custom_primary_button.dart';
import 'package:medi_track/utils/widgets/custom_text_button.dart';
import 'package:medi_track/utils/widgets/custom_text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
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
                    'Silahkan Register untuk melanjutkan',
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
                  const Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: CustomTextField(
                            label: 'Nama Depan',
                            hintText: 'Jhon',
                          ),
                        ),
                      ),
                      SizedBox(width: 35.0),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: CustomTextField(
                            label: 'Nama Belakang',
                            hintText: 'Doe',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  const CustomTextField(
                    label: 'No. KTP',
                    hintText: 'Masukan No. KTP anda',
                  ),
                  const SizedBox(height: 40.0),
                  const CustomTextField(
                    label: 'Email',
                    hintText: 'Masukan email anda',
                  ),
                  const SizedBox(height: 40.0),
                  const CustomTextField(
                    label: 'No. Telpon',
                    hintText: 'Masukan No. Telpon anda',
                  ),
                  const SizedBox(height: 40.0),
                  const CustomTextField(
                    label: 'Password',
                    hintText: 'Masukan password anda',
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  const SizedBox(height: 40.0),
                  const CustomTextField(
                    label: 'Konfirmasi Password',
                    hintText: 'Konfirmasi password anda',
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  const SizedBox(height: 40.0),
                  CustomPrimaryButton(
                      label: 'Register',
                      icon: Icons.arrow_right_alt,
                      onPressed: () {}),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Sudah punya akun ?',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: bebebe),
                      ),
                      CustomTextButton(
                          text: 'Login Sekarang',
                          onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
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
