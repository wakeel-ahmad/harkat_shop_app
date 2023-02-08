import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(local!.resetpassword,
                style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                local.pleaseenteremailtorecoverpass,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50.h),
            TextFormField(
              decoration: inputDecoration(hintText: local.name),
              // controller: controller.emailController,
            ),
            SizedBox(height: 80.h),
            AppButton(
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
