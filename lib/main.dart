import 'package:cart/database/habit_database.dart';
import 'package:cart/models/habit.dart';
import 'package:cart/pages/home_page.dart';
import 'package:cart/theme/theme.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // initialize database
  await HabitDatabase.initialize();
  await HabitDatabase().saveFirstLaunchDate();




  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}