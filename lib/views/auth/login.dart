import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/controllers/controllers.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final logInCtrl = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  Text(local!.login,
                      style: Theme.of(context).textTheme.headline5),
                  SizedBox(height: 10),
                  Text(local.addyourdeatiltosignin),
                  SizedBox(height: 50),
                  TextFormField(
                    controller: controller.emailController,
                    decoration: inputDecoration(hintText: local.email),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return local.require;
                      } else if (GetUtils.isEmail(value)) {
                        return local.entervalidemial;
                      } else {
                        return null;
                      }
                    }),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    decoration: inputDecoration(hintText: local.password),
                    controller: controller.passwordController,
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return local.require;
                      }
                      if (value.length < 6) {
                        return local.passwordlength6ormore;
                      } else {
                        return null;
                      }
                    }),
                  ),
                  SizedBox(height: 30),
                  Obx(
                    () => logInCtrl.indicator.value
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : kbutton(
                            onPressed: () {
                              logInCtrl.indicator(true);
                              Future.delayed(Duration(seconds: 3), () {
                                Get.offAndToNamed(Routes.pageSlider);
                                logInCtrl.indicator(false);
                              });
                            },
                            name: local.loginasgest,
                          ),
                  ),
                  SizedBox(height: 10),
                  Obx(
                    () => logInCtrl.isloading.value
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : kbutton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                logInCtrl.isloading(true);
                                Future.delayed(Duration(seconds: 3), () {
                                  Get.offAndToNamed(Routes.pageSlider);
                                  logInCtrl.isloading(false);
                                });
                              }
                            },
                            name: local.signup,
                          ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.resetpassword),
                    child: Text(local.forgetpassword,
                        style: Theme.of(context).textTheme.button),
                  ),
                  SizedBox(height: 10),
                  Text(local.or),
                  SizedBox(height: 10),
                  Text(local.loginwith,
                      style: Theme.of(context).textTheme.button),
                  SizedBox(height: 30),
                  kIconButton(
                    onPressed: () {},
                    name: local.loginwithfb,
                    color: ThemeColors.instance.secondryColor,
                    icon: FontAwesomeIcons.facebookF,
                  ),
                  SizedBox(height: 20),
                  kIconButton(
                    onPressed: () {},
                    name: local.loginwithgoogle,
                    color: ThemeColors.instance.redColor,
                    icon: FontAwesomeIcons.googlePlusG,
                  ),
                  SizedBox(height: 80),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "${local.donthaveanacc}   ",
                          style: const TextStyle(color: Colors.black)),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = (() => Get.toNamed(Routes.signup)),
                          text: local.signup,
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
      ),
    );
  }
}
