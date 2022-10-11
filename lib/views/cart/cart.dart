import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    'Cart',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              Center(
                child: Text("EMPTY"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
