import 'package:flutter/material.dart';
import 'package:mdg_services_order/screens/home_screen.dart';
import 'package:mdg_services_order/screens/login_Screen.dart';

//TODO: Crear el menu de la manera avanzada cuando vayamos a adicionar iconos
class AppRoutes {
  static String initialRoute = HomeScreen.routeName;

  static Map<String, Widget Function(BuildContext)> routes = {
    HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
    LoginScreen.routeName: (BuildContext context) => const LoginScreen(),
  };
}
