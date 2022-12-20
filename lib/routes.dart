import 'package:flutter/material.dart';
import 'package:office_app/screens/home_screen.dart';
import 'package:office_app/screens/login_screen.dart';
import 'package:office_app/screens/profile_screen.dart';

import 'package:office_app/screens/splash_screen.dart';

import 'main.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName:(context)=>HomeScreen(),
  ProfileScreen.routeName:(context)=>ProfileScreen(),

};
