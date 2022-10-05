import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/controllers/controllers.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.emailController,
              ),
              TextFormField(
                controller: controller.passwordController,
              ),
              ElevatedButton(
                onPressed: controller.onLogin,
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
