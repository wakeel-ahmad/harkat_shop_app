import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/bottom_sheets/addcard_sheet.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/core/core.dart';

class PaymetView extends StatelessWidget {
  const PaymetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Payment Details',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Customize your payment method',
                  style: Theme.of(context).textTheme.button,
                ),
                SizedBox(height: 5),
                Divider(),

                //      card container
                ...List.generate(
                  2,
                  (index) => CardContaier(),
                ),
                SizedBox(height: 20),
                kbutton(
                  width: Get.size.width / 1.5,
                  name: "Add Another Credit/Debit Card",
                  onPressed: () {
                    addCardBottomSheet(context: context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardContaier extends StatelessWidget {
  const CardContaier({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.black12,
        // boxShadow: [kBoxShadow()],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Cash/Card on delivery",
                style: Theme.of(context).textTheme.button,
              ),
              Icon(Icons.check,
                  size: 30, color: ThemeColors.instance.primaryColor),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/icon/visa.png"),
              Text("**** **** ****"),
              Text("1212"),
              kbutton(
                width: 150,
                onPressed: () {},
                isBorder: true,
                name: "Delete Card",
              ),
            ],
          ),
          Divider(),
          Text(
            "Other Method",
            style: Theme.of(context).textTheme.button,
          ),
        ],
      ),
    );
  }
}
