import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/controllers/controllers.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/routes/routes.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  Text("Log In", style: Theme.of(context).textTheme.headline5),
                  SizedBox(height: 10),
                  Text("Add your details to log in"),
                  SizedBox(height: 50),
                  TextFormField(
                    decoration: inputDecoration(hintText: "Your Email"),
                    controller: controller.emailController,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    decoration: inputDecoration(hintText: "Password"),
                    controller: controller.passwordController,
                  ),
                  SizedBox(height: 30),
                  kbutton(
                    onPressed: () {},
                    name: " Login as Guest",
                  ),
                  SizedBox(height: 10),
                  kbutton(
                    onPressed: () {
                      Get.offAndToNamed(Routes.pageSlider);
                    },
                    name: "Login",
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.resetpassword),
                    child: Text("Forget Your Password",
                        style: Theme.of(context).textTheme.button),
                  ),
                  SizedBox(height: 10),
                  Text("or"),
                  SizedBox(height: 10),
                  Text("Login With", style: Theme.of(context).textTheme.button),
                  SizedBox(height: 30),
                  kIconButton(
                    onPressed: () {},
                    name: "Login With Facebook",
                    color: ThemeColors.instance.secondryColor,
                    icon: FontAwesomeIcons.facebookF,
                  ),
                  SizedBox(height: 20),
                  kIconButton(
                    onPressed: () {},
                    name: "Login With Google",
                    color: ThemeColors.instance.redColor,
                    icon: FontAwesomeIcons.googlePlusG,
                  ),
                  SizedBox(height: 80),
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: "Dont have Account?  ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = (() => Get.toNamed(Routes.signup)),
                          text: "Sign Up",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.red)),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
