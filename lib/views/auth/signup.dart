import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/controllers/controllers/signup_controller.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final signUpCtrl = Get.put(SignUpController());

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
                SizedBox(height: 10.h),
                Text(local.addyourdeatiltosignin),
                SizedBox(height: 30.h),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: signUpCtrl.nameController,
                        decoration: inputDecoration(hintText: local.name),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return local.require;
                          } else {
                            return null;
                          }
                        }),
                      ),
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: signUpCtrl.emailController,
                        decoration: inputDecoration(hintText: local.email),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return local.require;
                          } else {
                            return null;
                          }
                        }),
                      ),
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: signUpCtrl.phoneController,
                        decoration:
                            inputDecoration(hintText: local.mobilenumber),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return local.require;
                          } else {
                            return null;
                          }
                        }),
                      ),
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: signUpCtrl.addressController,
                        decoration: inputDecoration(hintText: local.address),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return local.require;
                          } else {
                            return null;
                          }
                        }),
                      ),
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: signUpCtrl.passwordController,
                        decoration: inputDecoration(hintText: local.password),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return local.require;
                          } else {
                            return null;
                          }
                        }),
                      ),
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: signUpCtrl.conformPasswordController,
                        decoration:
                            inputDecoration(hintText: local.conformpassword),
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return local.require;
                          } else {
                            return null;
                          }
                        }),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Obx(
                  () => signUpCtrl.isloading.value
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : AppButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              signUpCtrl.isloading(true);
                              Future.delayed(Duration(seconds: 3), () {
                                signUpCtrl.isloading(false);
                                Get.offAndToNamed(Routes.pageSlider);
                              });
                            }
                          },
                          name: local.signup,
                        ),
                ),
                SizedBox(height: 50.h),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: " ${local.alreadyhaveacc}   ",
                        style: const TextStyle(color: Colors.black)),
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
