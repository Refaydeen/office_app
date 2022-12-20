import 'package:flutter/material.dart';
import 'package:office_app/routes.dart';
import 'package:office_app/screens/login_screen.dart';
import 'package:office_app/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
     // home:LoginScreen(),
      theme: ThemeData(accentColor: Colors.white70),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
