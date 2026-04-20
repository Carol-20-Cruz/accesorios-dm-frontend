import 'package:ecommerce_dm_flutter/src/presentation/pages/auth/login/LoginPage.dart';
import 'package:ecommerce_dm_flutter/src/presentation/pages/auth/login/register/RegisterPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce DM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),
      ),
      initialRoute: 'login',
      routes :{
        'login':(BuildContext context) => LoginPage(),
        'register':(BuildContext context) => RegisterPage(),
  
      },

    );
  }
}

