import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_todo/business_logic/blocs/bloc/tasks_state.dart';
import 'package:flutter_todo/data/models/task.dart';

part 'tasks_bloc.freezed.dart';
part 'tasks_event.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super( TasksState()) {
    on<TasksEventAdd>((event, emit){
      final state = this.state;
      emit(TasksState(allTasks: List.from(state.allTasks)..add(event.task)));
    });
    on<TasksEventUpdate>((event, emit){
          final state = this.state;
    final task = event.task;
    final int index = state.allTasks.indexOf(task);
    List<Task> allTasks = List.from(state.allTasks)..remove(task);
    task.isDone == false
        ? allTasks.insert(index, task.copyWith(isDone: true))
        : allTasks.insert(index, task.copyWith(isDone: false));

    emit(TasksState(allTasks: allTasks));
    });
    on<TasksEventDelete>((event, emit){
          final state = this.state;
    emit(TasksState(
      allTasks: List.from(state.allTasks)..remove(event.task),
    ));
    });
    on<TasksEventRemove>((event, emit){
   final state = this.state;
    emit(TasksState(
      allTasks: List.from(state.allTasks)..remove(event.task),
    ));
    });
    on<TasksEventEdit>((event, emit){
  final state = this.state;
    List<Task> allTasks = state.allTasks;
    if (event.oldTask.isFavorite == true) {
      allTasks
        ..remove(event.oldTask)
        ..insert(0, event.newTask);
    }
    emit(
      TasksState(
        padingTasks: List.from(state.padingTasks)
          ..remove(event.oldTask)
          ..insert(0, event.newTask),
        completedTasks: state.completedTasks..remove(event.oldTask),
        allTasks: allTasks,
        removedTasks: state.removedTasks,
      ),
    );
    });
  }
  // void _onAddTask(TasksEventAdd event, Emitter<TasksState> emit) {
   
  // }

  // void _onUpdateTask(TasksEventUpdate event, Emitter<TasksState> emit) {

  // }

  // void _onDeleteTask(TasksEventDelete event, Emitter<TasksState> emit) {

  // }

  // void _onRemoveTask(TasksEventRemove event, Emitter<TasksState> emit) {
 
  // }

  // void _onEditTask(TasksEventEdit event, Emitter<TasksState> emit) {
  
  // }
  
}