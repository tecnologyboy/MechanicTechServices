import 'package:flutter/material.dart';
import 'package:mdg_services_order/providers/button_menu_module_provider.dart';
import 'package:mdg_services_order/routes/app_routes.dart';
import 'package:mdg_services_order/themes/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ButtomMneuModuleProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      theme: AppTheme.lightTheme,
    );
  }
}
