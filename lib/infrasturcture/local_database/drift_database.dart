import 'dart:io';

import 'package:drift/drift.dart';

import 'package:drift/native.dart';
import 'package:flutter_todo/domain/task/entities/task.dart';

import 'package:injectable/injectable.dart' hide Order;

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'tables/task_table.dart';

part 'drift_database.g.dart';

@singleton
@DriftDatabase(tables: [TaskTable])
class AppDriftDatabase extends _$AppDriftDatabase {
  AppDriftDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(
    () async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));

      // work around limitations on old Android versions
      if (Platform.isAndroid) {
        await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      }

      return NativeDatabase.createInBackground(file);
    },
  );
}
