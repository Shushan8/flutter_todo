import 'package:drift/drift.dart';
import 'package:flutter_todo/domain/task/entities/task.dart';
import 'package:flutter_todo/domain/task/i_task_repo.dart';
import 'package:flutter_todo/infrasturcture/local_database/drift_database.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ITaskRepo)
class TaskRepoImpl implements ITaskRepo {
  final AppDriftDatabase _localDatabase;

  TaskRepoImpl(this._localDatabase);

  @override
  @override
  Future<void> save({required Task task}) async {
    _localDatabase.into(_localDatabase.taskTable).insert(
          TaskTableMapper.toCompanion(task: task),
          mode: InsertMode.insertOrReplace,
        );
  }

  @override
  Stream<List<Task>> get watchAll {
    final taskTablesStream =
        _localDatabase.select(_localDatabase.taskTable).watch();

    final tablesStream = taskTablesStream.asyncMap(
      (taskTable) {
        return taskTable.map(
          (e) {
            return TaskTableMapper(e).toEntity;
          },
        ).toList();
      },
    );

    return tablesStream;
  }

  @override
  Future<void> remove({required String id}) {
    return (_localDatabase.delete(_localDatabase.taskTable)
          ..where(
            (tbl) => tbl.id.equals(id),
          ))
        .go();
  }
}
