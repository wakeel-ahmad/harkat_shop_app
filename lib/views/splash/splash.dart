import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/routes/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3), () => Get.offNamed(Routes.usertype));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/bg.png"),
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              scale: 1,
            ),
          )
        ],
      ),
    );
  }
}
