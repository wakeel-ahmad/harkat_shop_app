import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/routes/routes.dart';

class SliderView extends StatelessWidget {
  SliderView({Key? key}) : super(key: key);
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          child: Stack(
            children: [
              PageView(
                controller: pageController,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/avatar1.png",
                        scale: 1.1,
                      ),
                      SizedBox(height: 100),
                      Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          onDotClicked: (i) {
                            pageController.animateToPage(i,
                                duration: Duration(microseconds: 500),
                                curve: Curves.bounceOut);
                          },
                          effect: WormEffect(),
                          count: 3,
                        ),
                      ),
                      SizedBox(height: 50),
                      Text("Find Good You Love",
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(height: 30),
                      Text(
                        "Discover the best goods from over many shops and fast delivery to your doorstep",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/avatar2.png",
                        scale: 1.2,
                      ),
                      SizedBox(height: 100),
                      Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          onDotClicked: (i) {
                            pageController.animateToPage(i,
                                duration: Duration(microseconds: 500),
                                curve: Curves.bounceOut);
                          },
                          effect: WormEffect(),
                          count: 3,
                        ),
                      ),
                      SizedBox(height: 50),
                      Text("Fast Delivery",
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(height: 30),
                      Text(
                        "Fast food delivery to your home, office wherever you are",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/avatar3.png",
                        scale: 1,
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          onDotClicked: (i) {
                            pageController.animateToPage(i,
                                duration: Duration(microseconds: 500),
                                curve: Curves.bounceOut);
                          },
                          effect: WormEffect(),
                          count: 3,
                        ),
                      ),
                      SizedBox(height: 50),
                      Text("Live Tracking",
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(height: 30),
                      Text(
                        "Real time tracking of your food on the app once you placed the order",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 60),
                      kbutton(
                        onPressed: () {
                          Get.offAndToNamed(Routes.dashbord);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
