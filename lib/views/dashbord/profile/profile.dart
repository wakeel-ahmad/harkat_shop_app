import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:tourism/components/button.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/components/snack_bars/snackbar.dart';
import 'package:tourism/controllers/controllers/profile_controller.dart';
import 'package:tourism/core/utlis/validators.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);

  final ctrl = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Obx(() {
                  return Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 80,
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
                  );
                }),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    ctrl.getImage();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.edit),
                      SizedBox(height: 5),
                      Text("Edit Profile"),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text("Hi There User!",
                    style: Theme.of(context).textTheme.button),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign Out"),
                ),
                SizedBox(height: 15),
                Form(
                  key: ctrl.formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: ctrl.nameController,
                        decoration: inputDecoration(hintText: "Mr Saeed"),
                        validator: RequiredValidator(
                            errorText: 'this field is required'),
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
                        decoration: inputDecoration(
                            hintText: "No 23, 6th Al Nehyan Camp, Abu Dhabi"),
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
                        decoration: inputDecoration(hintText: "Gender"),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: ctrl.passwordController,
                        decoration: inputDecoration(hintText: "Password"),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: ctrl.conformPasswordController,
                        decoration:
                            inputDecoration(hintText: "Confirm Password"),
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
                  name: "save",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    kbutton(name: "Fazaa", width: 120),
                    kbutton(name: "Isaad", width: 120),
                    kbutton(name: "Humat Al Watan", width: 130),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
