import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/routes/routes.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More',
                  style: Theme.of(context).textTheme.headline6,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 10),
            MoreTile(
              onTap: () {
                Get.toNamed(Routes.paymet);
              },
              leading: "assets/icon/paymet.png",
              title: "Paymet Detail",
            ),
            const SizedBox(height: 30),
            MoreTile(
              onTap: () {
                Get.toNamed(Routes.order);
              },
              leading: "assets/icon/order.png",
              title: "My Order",
            ),
            SizedBox(height: 30),
            MoreTile(
              onTap: () {
                Get.toNamed(Routes.notification);
              },
              leading: "assets/icon/notification.png",
              title: "Notification",
            ),
            SizedBox(height: 30),
            MoreTile(
              onTap: () {
                Get.toNamed(Routes.inbox);
              },
              leading: "assets/icon/inbox.png",
              title: "Inbox",
            ),
            SizedBox(height: 30),
            MoreTile(
              onTap: () {
                Get.toNamed(Routes.about);
              },
              leading: "assets/icon/about.png",
              title: "About Us",
            ),
            SizedBox(height: 30),
          ],
        ),
      )),
    );
  }
}

class MoreTile extends StatelessWidget {
  const MoreTile({
    required this.leading,
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String leading;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    leading,
                    scale: 1,
                  ),
                ),
                SizedBox(width: 30),
                Text(title),
              ],
            ),
          ),
          Positioned(
            top: 18,
            right: 5,
            child: Container(
              // alignment: Alignment.centerRight,
              padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.black12,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
