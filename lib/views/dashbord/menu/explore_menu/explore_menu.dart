import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/components/linearGradient.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/routes/routes.dart';

class ExploreMenuView extends StatelessWidget {
  const ExploreMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Food Category',
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: kinputDecoration(
                  hintText: "search items",
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: ((context, index) => GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.exploreproduct);
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width: Get.size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/food1.jpg"),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: kLinearGradient(),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Product Name",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star,
                                        color:
                                            ThemeColors.instance.primaryColor),
                                    Text(
                                      "4.7  ",
                                      style: TextStyle(
                                        color:
                                            ThemeColors.instance.primaryColor,
                                      ),
                                    ),
                                    Text(
                                      "Cakes by Tella    Desserts",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
