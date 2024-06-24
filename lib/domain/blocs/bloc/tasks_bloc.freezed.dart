// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(Task task) remove,
    required TResult Function(Task oldTask, Task newTask) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(Task task)? remove,
    TResult? Function(Task oldTask, Task newTask)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(Task task)? remove,
    TResult Function(Task oldTask, Task newTask)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksEventAdd value) add,
    required TResult Function(TasksEventUpdate value) update,
    required TResult Function(TasksEventDelete value) delete,
    required TResult Function(TasksEventRemove value) remove,
    required TResult Function(TasksEventEdit value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksEventAdd value)? add,
    TResult? Function(TasksEventUpdate value)? update,
    TResult? Function(TasksEventDelete value)? delete,
    TResult? Function(TasksEventRemove value)? remove,
    TResult? Function(TasksEventEdit value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksEventAdd value)? add,
    TResult Function(TasksEventUpdate value)? update,
    TResult Function(TasksEventDelete value)? delete,
    TResult Function(TasksEventRemove value)? remove,
    TResult Function(TasksEventEdit value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TasksEventAddImplCopyWith<$Res> {
  factory _$$TasksEventAddImplCopyWith(
          _$TasksEventAddImpl value, $Res Function(_$TasksEventAddImpl) then) =
      __$$TasksEventAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$TasksEventAddImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksEventAddImpl>
    implements _$$TasksEventAddImplCopyWith<$Res> {
  __$$TasksEventAddImplCopyWithImpl(
      _$TasksEventAddImpl _value, $Res Function(_$TasksEventAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TasksEventAddImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TasksEventAddImpl implements TasksEventAdd {
  const _$TasksEventAddImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.add(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksEventAddImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksEventAddImplCopyWith<_$TasksEventAddImpl> get copyWith =>
      __$$TasksEventAddImplCopyWithImpl<_$TasksEventAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(Task task) remove,
    required TResult Function(Task oldTask, Task newTask) edit,
  }) {
    return add(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(Task task)? remove,
    TResult? Function(Task oldTask, Task newTask)? edit,
  }) {
    return add?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(Task task)? remove,
    TResult Function(Task oldTask, Task newTask)? edit,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksEventAdd value) add,
    required TResult Function(TasksEventUpdate value) update,
    required TResult Function(TasksEventDelete value) delete,
    required TResult Function(TasksEventRemove value) remove,
    required TResult Function(TasksEventEdit value) edit,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksEventAdd value)? add,
    TResult? Function(TasksEventUpdate value)? update,
    TResult? Function(TasksEventDelete value)? delete,
    TResult? Function(TasksEventRemove value)? remove,
    TResult? Function(TasksEventEdit value)? edit,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksEventAdd value)? add,
    TResult Function(TasksEventUpdate value)? update,
    TResult Function(TasksEventDelete value)? delete,
    TResult Function(TasksEventRemove value)? remove,
    TResult Function(TasksEventEdit value)? edit,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class TasksEventAdd implements TasksEvent {
  const factory TasksEventAdd({required final Task task}) = _$TasksEventAddImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$TasksEventAddImplCopyWith<_$TasksEventAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksEventUpdateImplCopyWith<$Res> {
  factory _$$TasksEventUpdateImplCopyWith(_$TasksEventUpdateImpl value,
          $Res Function(_$TasksEventUpdateImpl) then) =
      __$$TasksEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$TasksEventUpdateImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksEventUpdateImpl>
    implements _$$TasksEventUpdateImplCopyWith<$Res> {
  __$$TasksEventUpdateImplCopyWithImpl(_$TasksEventUpdateImpl _value,
      $Res Function(_$TasksEventUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TasksEventUpdateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TasksEventUpdateImpl implements TasksEventUpdate {
  const _$TasksEventUpdateImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.update(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksEventUpdateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksEventUpdateImplCopyWith<_$TasksEventUpdateImpl> get copyWith =>
      __$$TasksEventUpdateImplCopyWithImpl<_$TasksEventUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(Task task) remove,
    required TResult Function(Task oldTask, Task newTask) edit,
  }) {
    return update(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(Task task)? remove,
    TResult? Function(Task oldTask, Task newTask)? edit,
  }) {
    return update?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(Task task)? remove,
    TResult Function(Task oldTask, Task newTask)? edit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksEventAdd value) add,
    required TResult Function(TasksEventUpdate value) update,
    required TResult Function(TasksEventDelete value) delete,
    required TResult Function(TasksEventRemove value) remove,
    required TResult Function(TasksEventEdit value) edit,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksEventAdd value)? add,
    TResult? Function(TasksEventUpdate value)? update,
    TResult? Function(TasksEventDelete value)? delete,
    TResult? Function(TasksEventRemove value)? remove,
    TResult? Function(TasksEventEdit value)? edit,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksEventAdd value)? add,
    TResult Function(TasksEventUpdate value)? update,
    TResult Function(TasksEventDelete value)? delete,
    TResult Function(TasksEventRemove value)? remove,
    TResult Function(TasksEventEdit value)? edit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class TasksEventUpdate implements TasksEvent {
  const factory TasksEventUpdate({required final Task task}) =
      _$TasksEventUpdateImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$TasksEventUpdateImplCopyWith<_$TasksEventUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksEventDeleteImplCopyWith<$Res> {
  factory _$$TasksEventDeleteImplCopyWith(_$TasksEventDeleteImpl value,
          $Res Function(_$TasksEventDeleteImpl) then) =
      __$$TasksEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$TasksEventDeleteImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksEventDeleteImpl>
    implements _$$TasksEventDeleteImplCopyWith<$Res> {
  __$$TasksEventDeleteImplCopyWithImpl(_$TasksEventDeleteImpl _value,
      $Res Function(_$TasksEventDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TasksEventDeleteImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TasksEventDeleteImpl implements TasksEventDelete {
  const _$TasksEventDeleteImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.delete(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksEventDeleteImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksEventDeleteImplCopyWith<_$TasksEventDeleteImpl> get copyWith =>
      __$$TasksEventDeleteImplCopyWithImpl<_$TasksEventDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(Task task) remove,
    required TResult Function(Task oldTask, Task newTask) edit,
  }) {
    return delete(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(Task task)? remove,
    TResult? Function(Task oldTask, Task newTask)? edit,
  }) {
    return delete?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(Task task)? remove,
    TResult Function(Task oldTask, Task newTask)? edit,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksEventAdd value) add,
    required TResult Function(TasksEventUpdate value) update,
    required TResult Function(TasksEventDelete value) delete,
    required TResult Function(TasksEventRemove value) remove,
    required TResult Function(TasksEventEdit value) edit,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksEventAdd value)? add,
    TResult? Function(TasksEventUpdate value)? update,
    TResult? Function(TasksEventDelete value)? delete,
    TResult? Function(TasksEventRemove value)? remove,
    TResult? Function(TasksEventEdit value)? edit,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksEventAdd value)? add,
    TResult Function(TasksEventUpdate value)? update,
    TResult Function(TasksEventDelete value)? delete,
    TResult Function(TasksEventRemove value)? remove,
    TResult Function(TasksEventEdit value)? edit,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class TasksEventDelete implements TasksEvent {
  const factory TasksEventDelete({required final Task task}) =
      _$TasksEventDeleteImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$TasksEventDeleteImplCopyWith<_$TasksEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksEventRemoveImplCopyWith<$Res> {
  factory _$$TasksEventRemoveImplCopyWith(_$TasksEventRemoveImpl value,
          $Res Function(_$TasksEventRemoveImpl) then) =
      __$$TasksEventRemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$TasksEventRemoveImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksEventRemoveImpl>
    implements _$$TasksEventRemoveImplCopyWith<$Res> {
  __$$TasksEventRemoveImplCopyWithImpl(_$TasksEventRemoveImpl _value,
      $Res Function(_$TasksEventRemoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TasksEventRemoveImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TasksEventRemoveImpl implements TasksEventRemove {
  const _$TasksEventRemoveImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.remove(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksEventRemoveImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksEventRemoveImplCopyWith<_$TasksEventRemoveImpl> get copyWith =>
      __$$TasksEventRemoveImplCopyWithImpl<_$TasksEventRemoveImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(Task task) remove,
    required TResult Function(Task oldTask, Task newTask) edit,
  }) {
    return remove(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(Task task)? remove,
    TResult? Function(Task oldTask, Task newTask)? edit,
  }) {
    return remove?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(Task task)? remove,
    TResult Function(Task oldTask, Task newTask)? edit,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksEventAdd value) add,
    required TResult Function(TasksEventUpdate value) update,
    required TResult Function(TasksEventDelete value) delete,
    required TResult Function(TasksEventRemove value) remove,
    required TResult Function(TasksEventEdit value) edit,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksEventAdd value)? add,
    TResult? Function(TasksEventUpdate value)? update,
    TResult? Function(TasksEventDelete value)? delete,
    TResult? Function(TasksEventRemove value)? remove,
    TResult? Function(TasksEventEdit value)? edit,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksEventAdd value)? add,
    TResult Function(TasksEventUpdate value)? update,
    TResult Function(TasksEventDelete value)? delete,
    TResult Function(TasksEventRemove value)? remove,
    TResult Function(TasksEventEdit value)? edit,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class TasksEventRemove implements TasksEvent {
  const factory TasksEventRemove({required final Task task}) =
      _$TasksEventRemoveImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$TasksEventRemoveImplCopyWith<_$TasksEventRemoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksEventEditImplCopyWith<$Res> {
  factory _$$TasksEventEditImplCopyWith(_$TasksEventEditImpl value,
          $Res Function(_$TasksEventEditImpl) then) =
      __$$TasksEventEditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task oldTask, Task newTask});
}

/// @nodoc
class __$$TasksEventEditImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksEventEditImpl>
    implements _$$TasksEventEditImplCopyWith<$Res> {
  __$$TasksEventEditImplCopyWithImpl(
      _$TasksEventEditImpl _value, $Res Function(_$TasksEventEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldTask = null,
    Object? newTask = null,
  }) {
    return _then(_$TasksEventEditImpl(
      oldTask: null == oldTask
          ? _value.oldTask
          : oldTask // ignore: cast_nullable_to_non_nullable
              as Task,
      newTask: null == newTask
          ? _value.newTask
          : newTask // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TasksEventEditImpl implements TasksEventEdit {
  const _$TasksEventEditImpl({required this.oldTask, required this.newTask});

  @override
  final Task oldTask;
  @override
  final Task newTask;

  @override
  String toString() {
    return 'TasksEvent.edit(oldTask: $oldTask, newTask: $newTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksEventEditImpl &&
            (identical(other.oldTask, oldTask) || other.oldTask == oldTask) &&
            (identical(other.newTask, newTask) || other.newTask == newTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldTask, newTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksEventEditImplCopyWith<_$TasksEventEditImpl> get copyWith =>
      __$$TasksEventEditImplCopyWithImpl<_$TasksEventEditImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) add,
    required TResult Function(Task task) update,
    required TResult Function(Task task) delete,
    required TResult Function(Task task) remove,
    required TResult Function(Task oldTask, Task newTask) edit,
  }) {
    return edit(oldTask, newTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? add,
    TResult? Function(Task task)? update,
    TResult? Function(Task task)? delete,
    TResult? Function(Task task)? remove,
    TResult? Function(Task oldTask, Task newTask)? edit,
  }) {
    return edit?.call(oldTask, newTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? add,
    TResult Function(Task task)? update,
    TResult Function(Task task)? delete,
    TResult Function(Task task)? remove,
    TResult Function(Task oldTask, Task newTask)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(oldTask, newTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksEventAdd value) add,
    required TResult Function(TasksEventUpdate value) update,
    required TResult Function(TasksEventDelete value) delete,
    required TResult Function(TasksEventRemove value) remove,
    required TResult Function(TasksEventEdit value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksEventAdd value)? add,
    TResult? Function(TasksEventUpdate value)? update,
    TResult? Function(TasksEventDelete value)? delete,
    TResult? Function(TasksEventRemove value)? remove,
    TResult? Function(TasksEventEdit value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksEventAdd value)? add,
    TResult Function(TasksEventUpdate value)? update,
    TResult Function(TasksEventDelete value)? delete,
    TResult Function(TasksEventRemove value)? remove,
    TResult Function(TasksEventEdit value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class TasksEventEdit implements TasksEvent {
  const factory TasksEventEdit(
      {required final Task oldTask,
      required final Task newTask}) = _$TasksEventEditImpl;

  Task get oldTask;
  Task get newTask;
  @JsonKey(ignore: true)
  _$$TasksEventEditImplCopyWith<_$TasksEventEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
