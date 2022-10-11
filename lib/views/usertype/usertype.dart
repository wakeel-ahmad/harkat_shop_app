import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/core/theme/theme_colors.dart';
import 'package:tourism/routes/routes.dart';

class UserTypeView extends StatelessWidget {
  const UserTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/logo.png",
                scale: 1.5,
              ),
              SizedBox(height: Get.size.height / 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                  Text("English", style: Theme.of(context).textTheme.button),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
              SizedBox(height: Get.size.height / 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserTypeContainer(
                    onTab: () {
                      Get.toNamed(Routes.finddeal);
                    },
                    label: "Login as a user",
                    icon: Icons.person,
                  ),
                  SizedBox(width: 10),
                  UserTypeContainer(
                    onTab: () {
                      Get.toNamed(Routes.finddeal);
                    },
                    label: "Login as a merchant",
                    icon: Icons.store_mall_directory_outlined,
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

class UserTypeContainer extends StatelessWidget {
  const UserTypeContainer({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTab,
  }) : super(key: key);
  final String label;
  final IconData icon;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue.shade300,
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 35,
              color: ThemeColors.instance.primaryColor,
            ),
            SizedBox(height: 5),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ThemeColors.instance.primaryColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}