import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_firebase/app/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        // ChildRoute('/', child: ((context, args) => const HomePage())),
        ModuleRoute('/', module: HomeModule()),
      ];
}
