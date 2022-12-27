import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
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
              SizedBox(height: 10),
              Image.asset(
                "assets/images/deal.png",
                fit: BoxFit.cover,
                width: Get.size.width,
              ),
              SizedBox(height: 30),
              Text(local.intro),
              SizedBox(height: 50),
              kbutton(
                onPressed: () {
                  Get.offAndToNamed(Routes.loginOrCreate);
                },
                name: local.getstarted,
                width: Get.size.width / 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
