import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/components/snack_bars/snackbar.dart';
import 'package:tourism/controllers/controllers/profile_controller.dart';
import 'package:tourism/core/utlis/validators.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);

  final ctrl = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        local!.profile,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_outlined,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Obx(() {
                  return Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                          image: ctrl.image.value.path.isNotEmpty
                              ? DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(ctrl.image.value),
                                )
                              : const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/icon/avatar.png"),
                                ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            ctrl.getImage();
                          },
                          child: const Icon(
                            Icons.camera_alt,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    ctrl.getImage();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.edit),
                      const SizedBox(height: 5),
                      Text(local.editprofile),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text(local.hiuser, style: Theme.of(context).textTheme.button),
                TextButton(
                  onPressed: () {},
                  child: Text(local.signout),
                ),
                SizedBox(height: 15),
                Form(
                  key: ctrl.formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: ctrl.nameController,
                        decoration: inputDecoration(hintText: local.mrxyz),
                        validator: RequiredValidator(errorText: local.require),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: ctrl.emailController,
                        decoration:
                            inputDecoration(hintText: "saeed@gmail.com"),
                        validator: Validate.email,
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: ctrl.phoneController,
                        decoration:
                            inputDecoration(hintText: "+92304687892455"),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: ctrl.addressController,
                        decoration:
                            inputDecoration(hintText: local.addresssample),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: ctrl.dobController,
                        decoration:
                            inputDecoration(hintText: "DOB : 12/10/2022"),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: ctrl.genderController,
                        decoration: inputDecoration(hintText: local.male),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: ctrl.passwordController,
                        decoration: inputDecoration(hintText: "*********"),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: ctrl.conformPasswordController,
                        decoration: inputDecoration(hintText: "*********"),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                kbutton(
                  onPressed: () {
                    if (ctrl.formKey.currentState!.validate()) {
                      ksucessSnackBar(context, "message");
                    }
                    // kerrorSnackBar(context, "message");
                  },
                  name: local.save,
                ),
                SizedBox(height: Get.size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    kbutton(
                        name: local.fazza,
                        labelSize: 11,
                        width: Get.size.width * 0.3),
                    kbutton(
                        name: local.isaad,
                        labelSize: 11,
                        width: Get.size.width * 0.3),
                    kbutton(
                        name: local.humatalwatan,
                        labelSize: 11,
                        width: Get.size.width * 0.3),
                  ],
                ),
                SizedBox(height: Get.size.height * 0.03)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
