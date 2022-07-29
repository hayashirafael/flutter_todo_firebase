// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String title;
  bool check;
  final DocumentSnapshot reference;
  TodoModel({
    required this.title,
    required this.check,
    required this.reference,
  });

  factory TodoModel.fromDocument(DocumentSnapshot doc) {
    return TodoModel(title: doc['title'], check: doc['check'], reference: doc['reference']);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'check': check,
      'reference': reference,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      title: map['title'] as String,
      check: map['check'] as bool,
      reference: map['reference'] as DocumentSnapshot,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoModel.fromJson(String source) => TodoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
