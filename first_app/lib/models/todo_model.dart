class Todo {
  final int userId;
  final int id;
  final String title;
  bool completed;

Todo(this.userId, this.id, this.title, this.completed);

factory Todo.fromJson(
  Map<String, dynamic> json,
) {
  return Todo(
    json['userId'] as int,
    json['id'] as int,
    json['title'] as String,
    json['completed'] as bool,
    );
  }
}

class AllTodos { //for what todos do?
  final List<Todo> todos;

  AllTodos(this.todos);//function contain above.

  factory AllTodos.fromJson(
    List<dynamic> json,
  ){
    var x = json.map((record) => Todo.fromJson(record)).toList();

    return AllTodos(x);
  }
}