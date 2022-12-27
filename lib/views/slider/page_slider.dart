import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SliderView extends StatelessWidget {
  SliderView({Key? key}) : super(key: key);
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
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
                      Text(local!.findgoodsforyou,
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(height: 30),
                      Text(
                        local.discoverthebestgoods,
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
                      Text(local.fastdelivery,
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(height: 30),
                      Text(
                        local.fastfooddeliverytoyourhome,
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
                      Text(local.livetracking,
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(height: 30),
                      Text(
                        local.realtimetrackingofyourfood,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 60),
                      kbutton(
                        name: local.next,
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
