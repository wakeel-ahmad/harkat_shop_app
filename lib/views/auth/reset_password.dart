import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(local!.resetpassword,
                style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                local.pleaseenteremailtorecoverpass,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            TextFormField(
              decoration: inputDecoration(hintText: local.name),
              // controller: controller.emailController,
            ),
            SizedBox(height: 80),
            kbutton(
              onPressed: () {
                Get.toNamed(Routes.otp);
              },
              name: local.send,
            ),
          ],
        ),
      ),
    );
  }
}
