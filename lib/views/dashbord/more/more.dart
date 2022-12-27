import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    local!.more,
                    style: Theme.of(context).textTheme.headline6,
                  ),
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
              title: local.paymetdetail,
            ),
            const SizedBox(height: 30),
            MoreTile(
              onTap: () {
                Get.toNamed(Routes.myorder);
              },
              leading: "assets/icon/order.png",
              title: local.myorder,
            ),
            SizedBox(height: 30),
            MoreTile(
              onTap: () {
                Get.toNamed(Routes.notification);
              },
              leading: "assets/icon/notification.png",
              title: local.notification,
            ),
            SizedBox(height: 30),
            MoreTile(
              onTap: () {
                Get.toNamed(Routes.inbox);
              },
              leading: "assets/icon/inbox.png",
              title: local.inbox,
            ),
            SizedBox(height: 30),
            MoreTile(
              onTap: () {
                Get.toNamed(Routes.about);
              },
              leading: "assets/icon/about.png",
              title: local.aboutus,
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
      child: Column(
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
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    leading,
                    scale: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(title),
                ),
                Spacer(),
                Container(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
