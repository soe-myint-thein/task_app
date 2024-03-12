import 'package:code_test/controller/app_controller.dart';
import 'package:code_test/pages/new_tasks_page.dart';
import 'package:code_test/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskListPage extends GetView<AppController> {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white24,
          title: const Text(
            'App Products',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.only(left: 15, right: 15),
          itemCount: controller.tasks['tasks'].length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                  top: 15,
                  bottom:
                      index == controller.tasks['tasks'].length - 1 ? 15 : 0),
              padding: const EdgeInsets.only(top: 5, left: 7, right: 7),
              // height: 40,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name'),
                      Text('Price'),
                      Text('Description'),
                    ],
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(': ${controller.tasks['tasks'][0]['title']}'),
                      Text(': ${controller.tasks['tasks'][0]['price']}'),
                      Text(': ${controller.tasks['tasks'][0]['description']}'),
                    ],
                  ))
                ],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const NewTaskPage());
          },
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
