import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:mdg_services_order/themes/app_theme.dart';
import 'package:mdg_services_order/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      body: Stack(
        children: const [
          _BackGround(),
          _LoginTitle(),
          _LoginForm(),
        ],
      ),
    );
  }
}

class _BackGround extends StatelessWidget {
  const _BackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _DiamondBlueBox(
          leftPosition: 60,
          boxColor: AppTheme.primary,
          percentageHight: 50,
          percentageWidth: 50,
        ),
        const _DiamondBlueBox(
            leftPosition: 95,
            boxColor: Colors.white,
            percentageHight: 50,
            percentageWidth: 50),
      ],
    );
  }
}

class _DiamondBlueBox extends StatelessWidget {
  final double leftPosition;
  final Color boxColor;
  final double percentageWidth;
  final double percentageHight;

  const _DiamondBlueBox(
      {super.key,
      required this.leftPosition,
      required this.boxColor,
      required this.percentageWidth,
      required this.percentageHight});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    print('width: $width hight $height');

    return Positioned(
      top: height * 0.25,
      left: -(width * (leftPosition / 100)),
      child: Transform.rotate(
        angle: pi / 4,
        child: Container(
          width: height * (percentageHight / 100),
          height: height * (percentageWidth / 100),
          decoration: BoxDecoration(
            color: boxColor,
          ),
        ),
      ),
    );
  }
}

class _LoginTitle extends StatelessWidget {
  const _LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Login',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primary),
            ),
            const SizedBox(
              width: 10,
            ),
            _Logo()
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Transform.rotate(
        angle: pi / 4,
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: AppTheme.primary,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(10),
        child: Transform.rotate(
          angle: pi / 4,
          child: Container(
            width: 15,
            height: 15,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ]);
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

    final Map<String, String> loginFormValue = {
      'username': '',
      'password': '',
      'rememberme': 'false'
    };

    return Center(
      child: SizedBox(
        height: 700,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
              key: loginFormKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    CustomInputField(
                      hintText: 'User Name',
                      inputtype: TextInputType.name,
                      formProperty: 'username',
                      formValues: loginFormValue,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomInputField(
                      hintText: 'Password',
                      obscureText: true,
                      inputtype: TextInputType.name,
                      formProperty: 'password',
                      formValues: loginFormValue,
                      prefixIcon: Icons.lock,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (loginFormValue['username'] == 'lperez' &&
                            loginFormValue['password'] == '123456') {
                          print('autenticacado correcto');

                          Navigator.pushReplacementNamed(context, 'home');
                        } else {
                          print('Usuario o password Incorrecto');
                        }

                        print(loginFormValue);
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Log in',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 130,
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: LoginNavigationBar()),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
