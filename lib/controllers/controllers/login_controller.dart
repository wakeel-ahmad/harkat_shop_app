import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tourism/components/snack_bars/app_snackbars.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/data/apis/base_api.dart';
import 'package:tourism/routes/routes.dart';

class LoginController extends GetxController {
  RxBool isloading = RxBool(false);
  RxBool indicator = RxBool(false);

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  AppApi api = Get.find<AppApi>();

  Future onLogin() async {
    if (formKey.currentState!.validate()) {
      var res = await api.post("/login", {
        'email': emailController.text.trim(),
        'password': passwordController.text.trim(),
      });
      if (res.isOk) {
        await GetStorage().write('auth_token', res.body['token']);
        Get.offAllNamed(Routes.home);
      } else {
        appPrint(res.statusText!, 'e');
      }
    }
  }

  Future onSocialLogin() async {
    try {} catch (e) {}
  }

  Future googleSignIn() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? account = await googleSignIn.signIn();
      if (account != null) {
        final authentication = await account.authentication;
        if (authentication.accessToken != null) {
          var credential = GoogleAuthProvider.credential(
            idToken: authentication.idToken,
            accessToken: authentication.accessToken,
          );
          FirebaseAuth.instance.signInWithCredential(credential);
        }
      }
    } on PlatformException catch (e) {
      if (e.code == 'network_error') {
        errorSnackBar("No Internet");
      } else {
        errorSnackBar("Something went wrong.");
      }
    }

    // Future fbSignIn() async {
    //   _googleSignIn.signIn().then((user) {
    //     _userObj = user;
    //     Get.offAllNamed(Routes.home);
    //   }).catchError((e) {
    //     Get.snackbar("Note", e.toString());
    //     log(e.toString());
    //   });
    // }
  }
}
