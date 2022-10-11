import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/routes/routes.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text("Sign Up", style: Theme.of(context).textTheme.headline5),
                SizedBox(height: 10),
                Text("Add your details to sign up"),
                SizedBox(height: 30),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: inputDecoration(hintText: "Name"),
                        // controller: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: inputDecoration(hintText: "Email"),
                        // controlle: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: inputDecoration(hintText: "Mobile No"),
                        // controller: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: inputDecoration(hintText: "Address"),
                        // controller: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: inputDecoration(hintText: "Password"),
                        // controller: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration:
                            inputDecoration(hintText: "Confirm Password"),
                        // controller: controller.emailController,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                kbutton(
                  onPressed: () {
                    Get.offAndToNamed(Routes.pageSlider);
                  },
                  name: "Sign Up",
                ),
                SizedBox(height: 50),
                RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                        text: "Already have an Account? ",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.back(),
                        text: "Login",
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
    );
  }
}
