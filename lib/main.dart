import 'package:flutter/material.dart';
import 'package:ngubin/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ).copyWith(secondary: Colors.redAccent),
        useMaterial3: true,
      ),
      home: MyHomePage(), // Assign MyHomePage to the home property
    );
  }
}
