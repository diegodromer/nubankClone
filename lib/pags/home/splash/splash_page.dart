import 'package:flutter/material.dart';
import 'package:nubankclonedromer/pags/home/home_page.dart';
import 'package:nubankclonedromer/pags/home/widgets/cards/second_card.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  Future<void> delay() async {
    return await Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation animated, Animation secondaryAnimation){
              return HomePage();
            }
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Center(
        child: Image.asset(
          'assets/images/nubank-logo.png',
          height: 80,
          color: Colors.white,
        ),
      ),
    );
  }
}
