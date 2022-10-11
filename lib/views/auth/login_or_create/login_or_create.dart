import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/routes/routes.dart';

class LoginOrCreateView extends StatelessWidget {
  const LoginOrCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/bg.png"),
          Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                width: double.infinity,
                height: Get.size.height / 1.5,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Text(
                      "Discover the best goods from over 1,000 shops and fast delivery to your doorstep",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    kbutton(
                      onPressed: () {
                        Get.offAndToNamed(Routes.login);
                      },
                      name: "login",
                    ),
                    SizedBox(height: 20),
                    kbutton(
                      onPressed: () {
                        Get.offAndToNamed(Routes.signup);
                      },
                      name: "Create An Account",
                      isBorder: true,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
