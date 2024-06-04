part of 'tasks_bloc.dart';

class TasksState extends Equatable {
   List<Task> allTasks;
   List<Task> padingTasks;
   List<Task> completedTasks;
   List<Task> favoriteTasks;
   List<Task> removedTasks;
   TasksState({
    this.allTasks = const <Task>[],
    this.padingTasks = const <Task>[],
    this.completedTasks = const <Task>[],
    this.favoriteTasks = const <Task>[],
    this.removedTasks = const <Task>[],
  });

  @override
  List<Object> get props => [allTasks,padingTasks,completedTasks,favoriteTasks,removedTasks,];

  Map<String, dynamic> toMap(){
    return{
      'padingTasks':padingTasks.map((x) => x.toMap()).toList(),
      'completedTasks':completedTasks.map((x) => x.toMap()).toList(),
      'favoriteTasks':favoriteTasks.map((x) => x.toMap()).toList(),
      'removedTasks':removedTasks.map((x) => x.toMap()).toList(),
    };

  }
  factory TasksState.formMap(Map<String, dynamic> map){
    return TasksState(
      padingTasks: List<Task>.from(map['padingTasks']?.map((x)=>Task.fromMap(map))),
      completedTasks: List<Task>.from(map['completedTasks']?.map((x)=>Task.fromMap(map))),
      favoriteTasks: List<Task>.from(map['favoriteTasks']?.map((x)=>Task.fromMap(map))),
      removedTasks: List<Task>.from(map['removedTasks']?.map((x)=>Task.fromMap(map))),
    );
  }
}
