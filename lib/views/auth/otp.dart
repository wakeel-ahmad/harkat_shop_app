import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(local!.wehavesentOTPtomobile,
                style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                local.chechemailtext,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            TextFormField(
              decoration: inputDecoration(hintText: "OTP"),
              // controller: controller.emailController,
            ),
            SizedBox(height: 50),
            kbutton(
              onPressed: () {
                Get.toNamed(Routes.newpasword);
              },
              name: local.next,
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "${local.dontreceived}    ",
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = (() {}),
                    text: local.send,
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
