import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/bottom_sheets/addcard_sheet.dart';
import 'package:tourism/components/bottom_sheets/send_order_sheet.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/boxShadow.dart';
import 'package:tourism/core/theme/theme_colors.dart';
import 'package:tourism/routes/routes.dart';
import 'package:tourism/views/dashbord/more/order/my_order.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CheckOutView extends StatelessWidget {
  CheckOutView({Key? key}) : super(key: key);

  bool val = true;
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kBoxShadow()],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        local!.checkout,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(local.deliveryaddress),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(local.address,
                              style: Theme.of(context).textTheme.button),
                          Text("East, Vila 11216",
                              style: Theme.of(context).textTheme.button),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.changeaddress);
                        },
                        child: Text(local.change),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kBoxShadow()],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(local.paymetmethod),
                        Spacer(),
                        const Icon(
                          Icons.add,
                          color: Colors.blue,
                        ),
                        GestureDetector(
                          onTap: () {
                            addCardBottomSheet(context: context);
                          },
                          child: Text(
                            local.addcard,
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  PaymetMethodTile(
                    icon: "assets/icon/paymet.png",
                    label: local.cashondelivery,
                    value: val,
                    onChanged: (val) {
                      val = val;
                    },
                  ),
                  PaymetMethodTile(
                    icon: "assets/icon/visa.png",
                    label: "Card **** **** **** 2187",
                    value: val,
                    onChanged: (val) {
                      val = val;
                    },
                  ),
                  // PaymetMethodTile(
                  //   icon: "assets/icon/pp.png",
                  //   label: "s.m.k.alshamisi@email.com",
                  //   value: val,
                  //   onChanged: (val) {
                  //     val = val;
                  //   },
                  // ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kBoxShadow()],
              ),
              child: Column(
                children: [
                  OrderTile(
                    label: local.subtotal,
                    value: "AED 68",
                    color: ThemeColors.instance.primaryColor,
                  ),
                  OrderTile(
                    label: local.deliverycost,
                    value: "AED 68",
                    color: ThemeColors.instance.primaryColor,
                  ),
                  OrderTile(
                    label: local.discount,
                    value: "- \$8",
                    color: ThemeColors.instance.primaryColor,
                  ),
                  const Divider(),
                  OrderTile(
                    label: local.total,
                    value: "AED 68.25",
                    color: ThemeColors.instance.primaryColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            kbutton(
              width: Get.size.width / 1.1,
              onPressed: () {
                sendOrderBottomSheet(
                  context: context,
                  local: local,
                );
              },
              name: local.sendorder,
            ),
          ],
        ),
      ),
    );
  }
}

class PaymetMethodTile extends StatelessWidget {
  const PaymetMethodTile({
    super.key,
    required this.label,
    this.icon,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final String? icon;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 10),
            Image.asset(icon!),
            SizedBox(width: 10),
            Expanded(child: Text(label)),
            Checkbox(
              fillColor:
                  MaterialStateProperty.all(ThemeColors.instance.primaryColor),
              tristate: true,
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
              shape: CircleBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
