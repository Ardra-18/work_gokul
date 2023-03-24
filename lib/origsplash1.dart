//import 'package:b_green/page/splash.dart';
import 'package:flutter/material.dart';
import 'package:work_gokul/front1.dart';
//import 'package:work_gokul/login1.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SplashPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/Settyl-logo-dark.png',
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
          width: 300.0,
        ),
        /*const Divider(
                height: 105.2,
                color: Colors.white,
              ),*/
      ),
    );
  }
}
