import 'package:flutter_todo_firebase/app/modules/home/models/todo_model.dart';
import 'package:flutter_todo_firebase/app/modules/home/repositories/todo_repository_interface.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final ITodoRepository repository;
  @observable
  late ObservableStream<List<TodoModel>> todoList;

  _HomeControllerBase(this.repository) {
    getList();
  }

  @action
  getList() {
    todoList = repository.getTodos().asObservable();
  }
}
