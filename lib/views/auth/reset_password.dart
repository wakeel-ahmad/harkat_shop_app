import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/routes/routes.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Reset Password",
                style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Please enter your email to receive a link to  create a new password via email",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            TextFormField(
              decoration: inputDecoration(hintText: "Name"),
              // controller: controller.emailController,
            ),
            SizedBox(height: 80),
            kbutton(
              onPressed: () {
                Get.toNamed(Routes.otp);
              },
              name: "Send",
            ),
          ],
        ),
      ),
    );
  }
}
