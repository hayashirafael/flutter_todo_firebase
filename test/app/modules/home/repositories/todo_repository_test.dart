import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo_firebase/app/modules/home/repositories/todo_repository.dart';

void main() {
  final outro = FirebaseFirestore.instance;
  final service = TodoRepository(outro).getTodos();
  print(service);
}
