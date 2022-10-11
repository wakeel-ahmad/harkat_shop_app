import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/routes/routes.dart';

class FindDealView extends StatelessWidget {
  const FindDealView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            children: [
              Text("Find The Deal",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: ThemeColors.instance.primaryColor,
                        fontWeight: FontWeight.w800,
                      )),
              Text("Goods for You!",
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
              Text(
                  "Harkat Shop is a good ordering platform that provide services to connect shops (owners of goods) with the interested customers with the option of delivery to the selected items. "),
              SizedBox(height: 50),
              kbutton(
                onPressed: () {
                  Get.offAndToNamed(Routes.loginOrCreate);
                },
                name: "Get Started",
                width: Get.size.width / 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
