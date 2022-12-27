import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/data/apis/base_api.dart';
import 'package:tourism/routes/routes.dart';

class SignUpController extends GetxController {
  RxBool isloading = RxBool(false);

  final formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final conformPasswordController = TextEditingController();

  Future onSignUp() async {
    if (formKey.currentState!.validate()) {
      var api = Get.find<AppApi>();
      var res = await api.post("/signup", {
        'name': firstNameController.text.trim(),
        'email': emailController.text.trim(),
        'number': phoneController.text.trim(),
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
