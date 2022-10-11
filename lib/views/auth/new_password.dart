import 'package:flutter/material.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("New Password", style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Please enter your email to receive a link to  create a new password via email",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: inputDecoration(hintText: "New Password"),
                    // controller: controller.emailController,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: inputDecoration(hintText: "Confirm Password"),
                    // controller: controller.emailController,
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            kbutton(
              onPressed: () {},
              name: "Next",
            ),
          ],
        ),
      ),
    );
  }
}
