import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FindDealView extends StatelessWidget {
  const FindDealView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 20.w),
          child: Column(
            children: [
              Text(local!.findtheideal,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: ThemeColors.instance.primaryColor,
                        fontWeight: FontWeight.w800,
                      )),
              Text(local.deliveryinstrusctions,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: ThemeColors.instance.primaryColor,
                      )),
              SizedBox(height: 10.h),
              Image.asset(
                "assets/images/deal.png",
                fit: BoxFit.cover,
                width: Get.size.width,
              ),
              SizedBox(height: 35.h),
              Text(local.intro),
              SizedBox(height: 50.h),
              AppButton(
                onPressed: () {
                  Get.offAndToNamed(Routes.loginOrCreate);
                },
                name: local.getstarted,
                width: 150.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
