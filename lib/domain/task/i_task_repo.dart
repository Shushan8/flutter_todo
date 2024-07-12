import 'package:flutter_todo/domain/task/entities/task.dart';
import 'package:injectable/injectable.dart';



abstract interface class ITaskRepo{
  Future<void> save({required Task task});

  Future<void> remove({required String id});

  Stream<List<Task>> get watchAll;
}