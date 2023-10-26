class Task {
  final String addr;
  final String not;
  bool isDone;

  Task({required this.addr, required this.not, this.isDone = false});

  void donechange() {
    isDone = !isDone;
  }
}
