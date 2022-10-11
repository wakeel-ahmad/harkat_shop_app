import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/routes/routes.dart';

sendOrderBottomSheet({BuildContext? context}) {
  return showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context!,
    isScrollControlled: true,
    isDismissible: true,
    builder: (BuildContext context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.75,
        maxChildSize: 0.75,
        minChildSize: 0.75,
        expand: false,
        builder: (context, scrollController) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.cancel_outlined),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Image.asset("assets/images/sucess.png", scale: 1),
                SizedBox(height: 50),
                Text(
                  "Thank You!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("for your order"),
                SizedBox(height: 100),
                kbutton(
                  width: Get.size.width / 1.3,
                  name: "Track My Order",
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed(Routes.dashbord);
                  },
                  child: Text("Back To Home",
                      style: Theme.of(context).textTheme.button),
                )
              ],
            ),
          );
        },
      );
    },
  );
}
