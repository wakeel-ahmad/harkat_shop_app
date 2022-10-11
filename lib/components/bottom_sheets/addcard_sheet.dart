import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';

addCardBottomSheet({BuildContext? context}) {
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
                    Text(
                      'Add Credit/Debit Card',
                      style: Theme.of(context).textTheme.button,
                    ),
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.cancel_outlined),
                    ),
                  ],
                ),
                Divider(),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: inputDecoration(hintText: "Card Numer"),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text("Expiry"),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              decoration: inputDecoration(hintText: "MM"),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              decoration: inputDecoration(hintText: "YY"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: inputDecoration(hintText: "Security Code"),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: inputDecoration(hintText: "First Name"),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: inputDecoration(hintText: "Last Name"),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("You can remove this card at anytime "),
                          Switch(
                            value: false,
                            onChanged: (val) {},
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
                kbutton(name: "Add Card"),
              ],
            ),
          );
        },
      );
    },
  );
}
