import 'package:devnology/screens/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module{

  @override
  List<Bind> get binds => [
    /// Injeção de dependencia
  ];

  /// rotas do módulo 
  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeScreen()),
  ];

}