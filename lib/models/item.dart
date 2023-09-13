class TodoItem {
  final int id;
  final String text;
  bool _isDone = false;

  TodoItem({
    required this.id,
    required this.text,
  });

  bool get isDone => _isDone;

  set setIsDone(bool status) {
    _isDone = status;
  }
}
