import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo_firebase/app/modules/home/models/todo_model.dart';
import 'package:flutter_todo_firebase/app/modules/home/repositories/todo_repository_interface.dart';

class TodoRepository implements ITodoRepository {
  final FirebaseFirestore firestore;

  TodoRepository(this.firestore);

  @override
  Stream<List<TodoModel>> getTodos() {
    return firestore
        .collection('todo')
        .snapshots()
        .map((snapshot) => snapshot.docs.map((e) => TodoModel.fromMap(e.data())).toList());
  }
}
