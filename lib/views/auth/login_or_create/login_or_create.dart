import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginOrCreateView extends StatelessWidget {
  const LoginOrCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/bg.png"),
          Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                width: double.infinity,
                height: 540.h,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Text(
                      local!.discoverthebestgoods,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.h),
                    AppButton(
                      onPressed: () {
                        Get.offAndToNamed(Routes.login);
                      },
                      name: local.login,
                    ),
                    SizedBox(height: 20.h),
                    AppButton(
                      onPressed: () {
                        Get.offAndToNamed(Routes.signup);
                      },
                      name: local.signup,
                      isBorder: true,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
