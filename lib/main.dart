import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_todo/di/injectable.dart';
import 'package:flutter_todo/onbording.dart';

import 'business_logic/blocs/bloc_exports.dart';

void main() {
  configureDependencies();

  runApp(MyApp());
=======
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/business_logic/bloc/tasks_bloc.dart';
import 'package:flutter_todo/onbording.dart';

void main() {
runApp(MyApp());
>>>>>>> c310e9f5a31fad4a09f099ea0fd6041a088b7879
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: Onbording(),
      ),
    );
  }
}
