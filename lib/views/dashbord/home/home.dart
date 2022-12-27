import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/controllers/controllers.dart';
import 'package:tourism/core/theme/theme_colors.dart';
import 'package:tourism/models/category/category.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeView extends GetView<FeedController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${local!.welcome} @user',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined,
                          color: Colors.black),
                    )
                  ],
                ),
                Text(local.deliveringto),
                const SizedBox(height: 5),
                Text(local.currentlocation,
                    style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 10),
                TextFormField(
                  decoration: kinputDecoration(
                    hintText: local.searchitems,
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      Category.category.length,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black26,
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/food1.jpg"),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(local.foodcategory),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Popular Shopes

                Row(
                  children: [
                    Text(local.popularshops,
                        style: Theme.of(context).textTheme.headline6),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(local.viewall),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),
                ...List.generate(
                  3,
                  (index) => GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.exploreproduct);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.size.width,
                            height: Get.size.height / 7,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/images/food1.jpg",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("Food Name By Harkat",
                              style: Theme.of(context).textTheme.button),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: ThemeColors.instance.primaryColor),
                              Text("4.9 ",
                                  style: Theme.of(context).textTheme.button),
                              Text("(124 ${local.rating}) ",
                                  style: Theme.of(context).textTheme.button),
                              Text("Cafe ",
                                  style: Theme.of(context).textTheme.button),
                              Text("Western Food ",
                                  style: Theme.of(context).textTheme.button),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // most popular

                SizedBox(height: 20),
                Row(
                  children: [
                    Text(local.mostpopular,
                        style: Theme.of(context).textTheme.headline6),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(local.viewall),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      10,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Get.size.width / 2,
                              height: Get.size.height / 7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: CachedNetworkImageProvider(
                                      "https://images.unsplash.com/photo-1532980400857-e8d9d275d858?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Food Name By Harkat",
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
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Recent Items

                Row(
                  children: [
                    Text(local.recentitem,
                        style: Theme.of(context).textTheme.headline6),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(local.viewall),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ...List.generate(
                  4,
                  (index) => Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Get.size.width / 4,
                          height: Get.size.height / 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/images/food.png",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Text("Food Name By Harkat",
                                style: Theme.of(context).textTheme.button),
                            Text("Cafe  Western Food",
                                style: Theme.of(context).textTheme.bodyText2),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: ThemeColors.instance.primaryColor),
                                Text("4.9  (124 ${local.rating})",
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
