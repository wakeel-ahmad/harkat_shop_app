import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginOrCreateView extends StatelessWidget {
  const LoginOrCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
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
                    Text(
                      local!.discoverthebestgoods,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    kbutton(
                      onPressed: () {
                        Get.offAndToNamed(Routes.login);
                      },
                      name: local.login,
                    ),
                    SizedBox(height: 20),
                    kbutton(
                      onPressed: () {
                        Get.offAndToNamed(Routes.signup);
                      },
                      name: local.signup,
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
