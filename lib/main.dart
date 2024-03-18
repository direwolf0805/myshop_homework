import 'package:flutter/material.dart';
import 'package:myshop_homework/models/product.dart';
import 'package:myshop_homework/screens/chilangar_amdin_acreen.dart';
import 'package:myshop_homework/screens/chilangar_screen.dart';
import 'package:myshop_homework/screens/home_screen.dart';
import 'package:myshop_homework/screens/login_screen.dart';
import 'package:myshop_homework/screens/seh_tarkibi.dart';
import 'package:myshop_homework/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Sehs>(
      create: (context) {
        return Sehs();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Orbitron',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        routes: {
          HomeScreen.id:(context) => HomeScreen(),
          SehTarkibi.id:(context) => SehTarkibi(),
          ChilangarScreen.id:(context) => ChilangarScreen(),
          LoginScreen.id:(context) => LoginScreen(),
          ChilangarAdminScreen.id:(context) => ChilangarAdminScreen(),
        },
      ),
    );
  }
}
