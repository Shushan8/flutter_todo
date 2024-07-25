import 'package:flutter/material.dart';
import 'package:flutter_todo/infrasturcture/local_database/drift_database.dart';
import 'package:flutter_todo/infrasturcture/task/task_repo_impl.dart';
import 'package:flutter_todo/presentation/screens/onbording.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
    final TaskRepoImpl taskRepo = TaskRepoImpl(AppDriftDatabase());

  @override
  void initState() {
    super.initState();
    _checkFirstSeen();
  }

  Future<void> _checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Onboarding(taskRepo: taskRepo,)));
    } else {
      await prefs.setBool('seen', true);
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assetc/images/img.png"), // փոխարինեք ձեր background-ի նկարով
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/app_logo.png', // փոխարինեք ձեր logo-ի նկարով
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                "App Name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "App Subtitle",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Onboarding(taskRepo: taskRepo,)),
                  );
                },
                child: Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
