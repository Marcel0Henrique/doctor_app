import 'dart:async';

import 'package:doctor_app/views/login_view.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

import 'package:flutter/material.dart';

class SplashFuturePage extends StatefulWidget {
  SplashFuturePage({Key? key}) : super(key: key);

  @override
  _SplashFuturePageState createState() => _SplashFuturePageState();
}

class _SplashFuturePageState extends State<SplashFuturePage> {
  Future<Widget> futureCall() async {
    await Future.delayed(Duration(seconds: 3));
    // do async operation ( api call, auto login)
    return Future.value(new LoginView());
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      loaderColor: Colors.white,
      logo: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
      title: Text(
        "Doctor App",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.blue,
      showLoader: true,
      loadingText: Text("Carregando..."),
      futureNavigator: futureCall(),
    );
  }
}
