// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain/task/i_task_repo.dart' as _i4;
import '../infrasturcture/local_database/drift_database.dart' as _i3;
import '../infrasturcture/task/task_repo_impl.dart' as _i5;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppDriftDatabase>(() => _i3.AppDriftDatabase());
  gh.singleton<_i4.ITaskRepo>(
      () => _i5.TaskRepoImpl(gh<_i3.AppDriftDatabase>()));
  return getIt;
}
