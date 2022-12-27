import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/boxShadow.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/linearGradient.dart';
import 'package:tourism/components/snack_bars/snackbar.dart';
import 'package:tourism/core/core.dart';

class ExploreProductView extends StatelessWidget {
  const ExploreProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // background image container
              Container(
                height: Get.size.height / 3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/food1.jpg"),
                  ),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    gradient: kLinearGradient(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // bottom container
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: Get.size.height / 3.5,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tandoori Chicken Pizza",
                              style: Theme.of(context).textTheme.headline4),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Icon(Icons.star,
                                    color: ThemeColors.instance.primaryColor),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("5 Ratings"),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'AED ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: '75',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                        text: '  /per unit',
                                        style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text("Description",
                              style: Theme.of(context).textTheme.button),
                          const SizedBox(height: 5),
                          const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),
                          const SizedBox(height: 10),
                          const Divider(),
                          Text("Customize your Order",
                              style: Theme.of(context).textTheme.button),
                          const SizedBox(height: 10),
                          const CartDrowpDownMenu(),
                          const SizedBox(height: 5),
                          const CartDrowpDownMenu(),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Text("Number of Portions",
                                  style: Theme.of(context).textTheme.button),
                              const Spacer(),
                              kbutton(
                                onPressed: () {},
                                name: "-",
                                width: 50,
                              ),
                              const SizedBox(width: 5),
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: ThemeColors.instance.primaryColor,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Text(
                                  "1",
                                  style:
                                      Theme.of(Get.context!).textTheme.button,
                                ),
                              ),
                              const SizedBox(width: 5),
                              kbutton(
                                onPressed: () {},
                                name: "+",
                                width: 50,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      children: [
                        Container(
                          height: 170,
                          width: 100,
                          decoration: BoxDecoration(
                            color: ThemeColors.instance.primaryColor,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                            boxShadow: [
                              kBoxShadow(),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Total Price"),
                              const SizedBox(height: 5),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'AED ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: '100',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              kbutton(
                                onPressed: () {
                                  ksucessSnackBar(
                                      context, "Add To Cart Sucessfully");
                                },
                                name: "Add To Cart",
                                width: 150,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                kBoxShadow(),
                              ],
                            ),
                            child: Icon(
                              Icons.shopping_cart,
                              size: 30,
                              color: ThemeColors.instance.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartDrowpDownMenu extends StatelessWidget {
  const CartDrowpDownMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(3),
      ),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(3),
        underline: const SizedBox(),
        isExpanded: true,
        value: '1',
        items: [
          '1',
          '2',
          '3',
        ]
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e.toString(),
                  ),
                ))
            .toList(),
        onChanged: (val) {},
      ),
    );
  }
}
