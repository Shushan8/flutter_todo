import 'package:flutter/material.dart';
import 'package:flutter_todo/onbording.dart';

import 'business_logic/blocs/bloc_exports.dart';
import 'data/models/task.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TasksBloc(),
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
