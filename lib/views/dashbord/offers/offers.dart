import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/core/core.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OffersView extends StatelessWidget {
  const OffersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      local!.latestoffers,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(local.finddiscounts),
                SizedBox(height: 20),
                kbutton(
                  onPressed: () {},
                  name: local.checkOffers,
                  width: 200,
                ),
                SizedBox(height: 10),
                ...List.generate(
                  20,
                  (index) => Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Get.size.width,
                          height: Get.size.height / 8,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/images/food.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(local.foodcategory,
                            style: Theme.of(context).textTheme.button),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: ThemeColors.instance.primaryColor),
                            Text("4.9",
                                style: Theme.of(context).textTheme.button),
                            Text("(124 ${local.rating})",
                                style: Theme.of(context).textTheme.button),
                            Text("Cafe",
                                style: Theme.of(context).textTheme.button),
                            Text("Western Food",
                                style: Theme.of(context).textTheme.button),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
