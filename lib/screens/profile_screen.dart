import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  static String routeName = 'ProfileScreen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //getAddress();
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),

    );
  }
}
