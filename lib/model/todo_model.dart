class TodoModel {
  TodoModel({required this.title, required this.todo, this.isDone = false});

  String title;
  String todo;
  bool isDone;
}
