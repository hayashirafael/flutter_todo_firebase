import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_firebase/app/modules/home/home_controller.dart';
import 'package:flutter_todo_firebase/app/modules/home/home_page.dart';
import 'package:flutter_todo_firebase/app/modules/home/repositories/todo_repository.dart';
import 'package:flutter_todo_firebase/app/modules/home/repositories/todo_repository_interface.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => HomeController(i.get())),
        Bind.factory<ITodoRepository>((i) => TodoRepository(FirebaseFirestore.instance)),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: ((context, args) => const HomePage())),
      ];
}
