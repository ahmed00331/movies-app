import 'package:flutter/material.dart';
import 'package:movies_app/layouts/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
      },
      initialRoute: HomeLayout.routeName,
    );
  }
}
