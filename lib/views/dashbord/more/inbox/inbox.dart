import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InboxView extends StatelessWidget {
  const InboxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
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
                    local!.inbox,
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
                itemBuilder: (context, index) => InboxTile(
                  title: "Harakat Shop Promotion",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  datetime: "Date/Time",
                  onStar: () {},
                ),
                separatorBuilder: (contex, i) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Divider(),
                ),
                itemCount: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InboxTile extends StatelessWidget {
  const InboxTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.datetime,
    required this.onStar,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String datetime;
  final VoidCallback? onStar;

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
      trailing: Column(
        children: [
          Text(datetime),
          SizedBox(height: 12),
          GestureDetector(
            onTap: onStar,
            child: Icon(Icons.star, size: 24),
          ),
        ],
      ),
    );
  }
}
