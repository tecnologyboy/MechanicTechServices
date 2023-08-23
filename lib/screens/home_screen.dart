import 'package:flutter/material.dart';
import 'package:mdg_services_order/themes/app_theme.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services Order'),
        backgroundColor: AppTheme.primary,
      ),
      drawer: const LeftAppbarMenu(),
      body: const SizedBox(
        child: Text('Home Screen'),
      ),
    );
  }
}
