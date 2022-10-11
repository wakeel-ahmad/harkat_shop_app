import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  'Notifications',
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
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const NotificationTile(
                title: "Your orders has been picked up",
                subtitle: "1 hr ago",
              ),
              separatorBuilder: (contex, i) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              itemCount: 5,
            )
          ],
        ),
      )),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CircleAvatar(
          radius: 6,
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
