import 'package:flutter/material.dart';

class LoginNavigationBar extends StatelessWidget {
  const LoginNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex:
          0, //TODO: Cambiar dinamicamente con un manejador de estado, en este caso, provider
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye_sharp), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: ''),
      ],
    );
  }
}
