import 'package:flutter/material.dart';
import 'package:flutter_todo/di/injectable.dart';
import 'package:flutter_todo/infrasturcture/local_database/drift_database.dart';
import 'package:flutter_todo/infrasturcture/task/task_repo_impl.dart';
import 'package:flutter_todo/presentation/screens/intro_screen.dart';
import 'package:flutter_todo/presentation/screens/onbording.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = (prefs.getBool('seen') ?? false);
   runApp(MyApp(seen: seen));
}

class MyApp extends StatelessWidget {
  final bool seen;
   MyApp({super.key, required this.seen});
  final TaskRepoImpl taskRepo = TaskRepoImpl(AppDriftDatabase());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
        home: seen ? Onboarding(taskRepo: taskRepo,) : IntroScreen(),
    );
  }
}
