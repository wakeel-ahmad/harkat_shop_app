import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(local!.signup,
                    style: Theme.of(context).textTheme.headline5),
                SizedBox(height: 10),
                Text(local.addyourdeatiltosignin),
                SizedBox(height: 30),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: inputDecoration(hintText: local.name),
                        // controller: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: inputDecoration(hintText: local.name),
                        // controlle: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration:
                            inputDecoration(hintText: local.mobilenumber),
                        // controller: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: inputDecoration(hintText: local.address),
                        // controller: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: inputDecoration(hintText: local.password),
                        // controller: controller.emailController,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration:
                            inputDecoration(hintText: local.conformpassword),
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
                  name: local.signup,
                ),
                SizedBox(height: 50),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: " ${local.alreadyhaveacc}   ",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.back(),
                        text: local.login,
                        style: Theme.of(context).textTheme.button!.copyWith(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
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
