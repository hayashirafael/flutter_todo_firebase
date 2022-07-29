import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_todo_firebase/app/modules/home/repositories/todo_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  show() {
    final outro = FirebaseFirestore.instance;
    final service = TodoRepository(outro).getTodos();
    print(service.toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(itemBuilder: ((context, index) {
          return const ListTile();
        }));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          show();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
