import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo/Home_Screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
    super.initState();
    appNavigate(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Image(
              width: 185,
              height: 185,
              image: AssetImage('assets/images/todo_splash.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Text('TODO App',
              style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red))
          ],
        ),
      ),
    );
  }
}
void appNavigate(BuildContext context)
{
  Timer(const Duration(seconds: 3), () {
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),));
  });
}