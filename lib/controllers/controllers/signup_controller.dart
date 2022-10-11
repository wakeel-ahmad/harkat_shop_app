import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/data/apis/base_api.dart';
import 'package:tourism/routes/routes.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phomeController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final conformPasswordController = TextEditingController();

  Future onSignUp() async {
    if (formKey.currentState!.validate()) {
      var api = Get.find<AppApi>();
      var res = await api.post("/signup", {
        'name': nameController.text.trim(),
        'email': emailController.text.trim(),
        'number': phomeController.text.trim(),
        'address': addressController.text.trim(),
        'password': passwordController.text.trim(),
        'conform_Password': conformPasswordController.text.trim(),
      });
      if (res.isOk) {
        await GetStorage().write('auth_token', res.body['token']);
        Get.offAllNamed(Routes.home);
      } else {
        appPrint(res.statusText!, 'e');
      }
    }
  }
}
