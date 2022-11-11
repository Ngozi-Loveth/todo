import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../provider/todo_provider.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  TextEditingController titleController = TextEditingController();
  TextEditingController todoController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final myFav = Provider.of<TodoProvider>(context);
    return SafeArea(
        child: SingleChildScrollView(
      child: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    hintText: 'New Todo',
                    prefixIcon: Icon(
                      Icons.newspaper_outlined,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                  color: Colors.grey,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: todoController,
                      maxLines: 8, //or null
                      decoration: const InputDecoration.collapsed(
                          hintText: "Enter your New todo"),
                    ),
                  )),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add_alert),
                label: const Text("Add Todo"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber)),
                onPressed: () {
                  // if (formKey.currentState!.validate()) {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) {
                  //     // return Dashboard(
                  //     //   email: emailController.text,
                  //     // );
                  //   }));
                  // }
                  myFav.addtodo(titleController.text, todoController.text);
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
