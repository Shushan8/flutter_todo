part of '../drift_database.dart';

class TaskTable extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

extension TaskTableMapper on TaskTableData {
  Task get toEntity {
    return Task(
      id: id,
      name: name,
      startDate: startDate,
    );
  }

  static TaskTableCompanion toCompanion({required Task task}) {
    return TaskTableCompanion(
      id: Value(task.id),
      startDate: Value(task.startDate),
      endDate: Value(task.endDate),
      name: Value(task.name),
    );
  }
}
