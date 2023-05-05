import 'package:flutter/material.dart';
import 'package:mdg_services_order/screens/home_screen.dart';
import 'package:mdg_services_order/screens/login_Screen.dart';

//TODO: Crear el menu de la manera avanzada cuando vayamos a adicionar iconos
class AppRoutes {
  static const String initialRoute = 'login';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'login': (BuildContext context) => const LoginScreen(),
  };
}
