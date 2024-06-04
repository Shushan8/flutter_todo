import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Task extends Equatable {
  // final String id;
   String title;
   String date;
  bool? isDone;
  bool? isDeleted;
  bool? isFavorite;

  Task({
    // required this.id,
    required this.title,
    required this.date,
    this.isDone,
    this.isDeleted,
  }) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }

  Task copyWith({
    // String? id,
    String? title,
    String? date,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Task(
      // id: id ?? this.id,
      title: title ?? this.title,
      date: date ?? this.date,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'date': date,
      // 'id': id,
      'isDone': isDone,
      'isDeleted': isDeleted,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      // id: map['id'] ?? '',
      title: map['title'] ?? '',
      date: map['date'] ?? '',
      isDone: map['isDone'],
      isDeleted: map['isDeleted'],
    );
  }

  @override
  List<Object?> get props => [
        // id,
        title,
        date,
        isDone,
        isDeleted,
      ];

  // String toJson() => json.encode(toMap());

  // factory Task.fromJson(String source) => Task.fromMap(json.decode(source) as Map<String, dynamic>);
}
