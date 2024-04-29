import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:medi_track/modules/login/bloc/login_bloc.dart';
import 'package:medi_track/modules/login/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medi Track',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => LoginBloc(),
        child: const LoginPage(),
      ),
      builder: EasyLoading.init(),
    );
  }
}
