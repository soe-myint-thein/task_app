import 'package:code_test/controller/app_controller.dart';
import 'package:code_test/pages/task_list_page.dart';
import 'package:code_test/utils/app_colors.dart';
import 'package:code_test/utils/demensions.dart';
import 'package:code_test/widget/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<AppController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<AppController>();
    var username = TextEditingController();
    var password = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: Dimensions.width20),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign into your account",
                  style: TextStyle(
                      fontSize: Dimensions.font20, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          // your phone
          AppTextField(
              textController: username,
              hintText: "User Name",
              icon: Icons.phone),
          SizedBox(
            height: Dimensions.height20,
          ),
          // your password
          AppTextField(
            textController: password,
            hintText: "Password",
            icon: Icons.password_sharp,
            isObscure: true,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          GestureDetector(
            onTap: () {
              // controller.login(username.text, password.text);
              controller.getAllProduct();
              Get.to(const TaskListPage());
            },
            child: Container(
              width: Dimensions.screenWidth / 2.5,
              height: Dimensions.screenHeight / 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: AppColors.mainColor,
              ),
              child: Center(
                child: Text(
                  "Sign In",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: const Color(0xFF332d2b),
                      fontWeight: FontWeight.w400,
                      fontSize: Dimensions.font18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
