import 'package:flutter/material.dart';
import 'package:pretty_login/widgets/gradient_button.dart';
import 'package:pretty_login/widgets/login_field.dart';
import 'package:pretty_login/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              SocialButton(
                iconName: 'g_logo',
                label: 'Entrar com Google',
                horizontalPadding: 80.0,
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              SocialButton(
                iconName: 'f_logo',
                label: 'Entrar com Facebook',
                onPressed: () {},
              ),
              const SizedBox(height: 15),
              const Text('ou', style: TextStyle(fontSize: 17)),
              const SizedBox(height: 15),
              const LoginField(
                hintText: 'Email',
              ),
              const SizedBox(height: 15),
              const LoginField(
                hintText: 'Senha',
              ),
              const SizedBox(height: 20),
              GradientButton(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
