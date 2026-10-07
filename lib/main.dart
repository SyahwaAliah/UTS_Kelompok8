import 'package:flutter/material.dart';
import 'dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bimbingan Skripsi',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAF7ED),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF687044),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
      ),
      home: const DashboardPage(),
    );
  }
}