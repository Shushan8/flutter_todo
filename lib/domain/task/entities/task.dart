class Task {
  final String id;
  final String name;
  final DateTime startDate;
  final DateTime? endDate;

  const Task({
    required this.id,
    required this.name,
    required this.startDate,
    this.endDate,
  });
}
