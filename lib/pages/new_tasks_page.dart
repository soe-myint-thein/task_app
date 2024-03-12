import 'package:code_test/utils/app_colors.dart';
import 'package:code_test/utils/demensions.dart';
import 'package:code_test/widget/app_text_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewTaskPage extends StatelessWidget {
  const NewTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    var price = TextEditingController();
    var description = TextEditingController();
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.239),
        title: const Text(
          'New Product',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          AppTextField(
            textController: name,
            hintText: "Name",
            isObscure: false,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextField(
            textController: name,
            hintText: "Price",
            isObscure: false,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextField(
            textController: name,
            hintText: "Description",
            isObscure: false,
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                  left: Dimensions.height20, right: Dimensions.height20),
              height: Dimensions.screenHeight / 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: AppColors.mainColor,
              ),
              child: Center(
                child: Text(
                  "Add New Product",
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
    ));
  }
}
