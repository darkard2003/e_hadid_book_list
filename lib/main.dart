import 'package:e_hadid_book_list/colors.dart';
import 'package:e_hadid_book_list/screens/reading_screen/reading_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.primaryColor,
          background: AppColor.creamColor,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColor.primaryColor,
            fontSize: 18,
          ),
          bodyLarge: TextStyle(
            color: AppColor.primaryColor,
          ),
          titleLarge: TextStyle(
            color: AppColor.secondaryColor,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.creamColor,
          foregroundColor: AppColor.primaryColor,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: AppColor.creamColor,
          background: AppColor.backgroundColor,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColor.creamColor,
            fontSize: 18,
          ),
          bodyLarge: TextStyle(
            color: AppColor.creamColor,
          ),
          titleLarge: TextStyle(
            color: AppColor.cyan,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.backgroundColor,
          foregroundColor: AppColor.primaryColor,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryColor,
          ),
        ),
      ),
      routes: {
        '/reading': (context) => const ReadingScreen(),
      },
      initialRoute: '/reading',
    );
  }
}
