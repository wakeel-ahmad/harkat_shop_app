import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourism/core/theme/theme_colors.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserTypeView extends StatelessWidget {
  const UserTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/logo.png",
                scale: 1,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                  Text("Arabic", style: Theme.of(context).textTheme.button),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios)),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserTypeContainer(
                    onTab: () {
                      Get.toNamed(Routes.finddeal);
                    },
                    label: local!.loginasuser,
                    icon: Icons.person,
                  ),
                  SizedBox(width: 10.w),
                  UserTypeContainer(
                    onTab: () {
                      Get.toNamed(Routes.finddeal);
                    },
                    label: local.loginasdriver,
                    icon: Icons.store_mall_directory_outlined,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserTypeContainer extends StatelessWidget {
  const UserTypeContainer({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTab,
  }) : super(key: key);
  final String label;
  final IconData icon;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: 100.w,
        padding: EdgeInsets.all(14.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.blue.shade300,
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 35,
              color: ThemeColors.instance.primaryColor,
            ),
            SizedBox(height: 5.h),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ThemeColors.instance.primaryColor,
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
