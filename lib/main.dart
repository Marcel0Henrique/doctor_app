import 'package:doctor_app/controllers/cadastro_controller.dart';
import 'package:doctor_app/controllers/login_controller.dart';
import 'package:doctor_app/views/cadastro_view.dart';
import 'package:doctor_app/views/login_view.dart';
import 'package:doctor_app/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      child: MyApp(),
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoginController(),
          child: LoginView(),
        ),
        ChangeNotifierProvider(
          create: (context) => CadastroController(),
          child: CadastroView(),
        )
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashFuturePage(),
        "/login": (context) => LoginView(),
        "/registro": (context) => CadastroView(),
      },
    );
  }
}
