import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubankclonedromer/pags/home/home_page.dart';
import 'package:nubankclonedromer/pags/home/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent, //pra ficar a tela inteira da mesma cor do app
    systemNavigationBarColor: Colors.purple[800],
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank Diego',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark
      ),
      home: SplashPage(),
    );
  }
}
