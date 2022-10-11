import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/routes/routes.dart';

class OrderView extends StatelessWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
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
                  'My Order',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/food.png"),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('King Burgers',
                        style: Theme.of(context).textTheme.headline6),
                    Row(
                      children: [
                        Icon(Icons.star,
                            color: ThemeColors.instance.primaryColor),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "4.9",
                                style: TextStyle(
                                    color: ThemeColors.instance.primaryColor),
                              ),
                              const TextSpan(
                                text: " ( 124 ",
                                style: TextStyle(color: Colors.black),
                              ),
                              const TextSpan(
                                text: "rating )",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Burger  ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: "Western Food",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.maps_ugc,
                            color: ThemeColors.instance.primaryColor),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "No 03, 4th Lane, Newyork",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // items types list
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              color: Colors.black12,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => const OrderTile(
                  label: "Classic Burger x1",
                  value: "AED 15",
                  istype: true,
                ),
                separatorBuilder: ((context, index) => Divider()),
                itemCount: 5,
              ),
            ),
            Row(
              children: [
                const Text(
                  "Delivery Instrusctions",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Spacer(),
                const Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Add Notes",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            Divider(),
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
              label: "VAT (5%)",
              value: "AED 68",
              color: ThemeColors.instance.primaryColor,
            ),
            Divider(),

            OrderTile(
              label: "Total",
              value: "AED 68.25",
              color: ThemeColors.instance.primaryColor,
            ),
            SizedBox(height: 20),
            kbutton(
              width: Get.size.width / 1.1,
              onPressed: () {
                Get.toNamed(Routes.checkout);
              },
              name: "Check Out",
            ),
          ],
        ),
      )),
    );
  }
}

class OrderTile extends StatelessWidget {
  const OrderTile({
    Key? key,
    required this.label,
    required this.value,
    this.color,
    this.istype = false,
  }) : super(key: key);
  final String label;
  final String value;
  final Color? color;
  final bool? istype;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: istype!
                ? null
                : TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: color ?? Colors.black),
          ),
        ],
      ),
    );
  }
}
