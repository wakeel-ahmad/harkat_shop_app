import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

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
            Text(local!.wehavesentOTPtomobile,
                style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                local.chechemailtext,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50.h),
            TextFormField(
              decoration: inputDecoration(hintText: "OTP"),
              // controller: controller.emailController,
            ),
            SizedBox(height: 50.h),
            AppButton(
              onPressed: () {
                Get.toNamed(Routes.newpasword);
              },
              name: local.next,
            ),
            SizedBox(height: 20.h),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "${local.dontreceived}    ",
                    style: const TextStyle(color: Colors.black)),
                TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = (() {}),
                    text: local.send,
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.red,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        )),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
