import 'package:flutter/material.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewPasswordView extends StatelessWidget {
  NewPasswordView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
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
            Text(local!.newpassword,
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
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: inputDecoration(hintText: local.newpassword),
                    // controller: controller.emailController,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration:
                        inputDecoration(hintText: local.conformpassword),
                    // controller: controller.emailController,
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            kbutton(
              onPressed: () {},
              name: local.next,
            ),
          ],
        ),
      ),
    );
  }
}
