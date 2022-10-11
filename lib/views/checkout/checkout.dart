import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/bottom_sheets/addcard_sheet.dart';
import 'package:tourism/components/bottom_sheets/send_order_sheet.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/boxShadow.dart';
import 'package:tourism/core/theme/theme_colors.dart';
import 'package:tourism/routes/routes.dart';
import 'package:tourism/views/dashbord/more/order/order.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool val = true;
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
                        'Check Out',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text("Delivery Address"),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Al Ain, Mazyed ",
                              style: Theme.of(context).textTheme.button),
                          Text("East, Vila 11216",
                              style: Theme.of(context).textTheme.button),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.changeaddress);
                        },
                        child: Text("Change"),
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
                        const Text("Payment method"),
                        Spacer(),
                        const Icon(
                          Icons.add,
                          color: Colors.blue,
                        ),
                        GestureDetector(
                          onTap: () {
                            addCardBottomSheet(context: context);
                          },
                          child: const Text(
                            "Add Card",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  PaymetMethodTile(
                    icon: "assets/icon/paymet.png",
                    label: "Cash on delivery",
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
                  PaymetMethodTile(
                    icon: "assets/icon/pp.png",
                    label: "s.m.k.alshamisi@email.com",
                    value: val,
                    onChanged: (val) {
                      val = val;
                    },
                  ),
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
                    label: "Sub Total",
                    value: "AED 68",
                    color: ThemeColors.instance.primaryColor,
                  ),
                  OrderTile(
                    label: "Delivery Cost",
                    value: "AED 68",
                    color: ThemeColors.instance.primaryColor,
                  ),
                  OrderTile(
                    label: "Discount",
                    value: "- \$8",
                    color: ThemeColors.instance.primaryColor,
                  ),
                  const Divider(),
                  OrderTile(
                    label: "Total",
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
                sendOrderBottomSheet(context: context);
              },
              name: "Send Order",
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
