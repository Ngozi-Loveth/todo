import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/todo_provider.dart';

class TodoWidget extends StatefulWidget {
  const TodoWidget({Key? key}) : super(key: key);

  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final myFav = Provider.of<TodoProvider>(context);
    return Consumer<TodoProvider>(builder: (context, index, child) {
      return ListView.builder(
          itemCount: index.todo.length,
          itemBuilder: (
            context,
            i,
          ) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text(myFav.todo[i].title),
              subtitle: Text(myFav.todo[i].todo),
            );
          });
    });
  }
}
