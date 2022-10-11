import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/routes/routes.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("We have sent an OTP to your Mobile",
                style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Please check your mobile number 050*****58 continue to reset your password",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            TextFormField(
              decoration: inputDecoration(hintText: "Name"),
              // controller: controller.emailController,
            ),
            SizedBox(height: 50),
            kbutton(
              onPressed: () {
                Get.toNamed(Routes.newpasword);
              },
              name: "Next",
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Didn't Receive? ",
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = (() {}),
                    text: "Resend",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.red)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
