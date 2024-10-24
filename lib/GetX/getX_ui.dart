// ignore_for_file: prefer_const_constructors

import 'package:demo/GetX/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileUi extends StatelessWidget {
  ProfileUi({super.key});

  final ProfileController profileController = Get.put(ProfileController());
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Management"),
      ),
      body: Obx(() {
        return profileController.users.isEmpty
            ? Center(
                child: Text("No Users"),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: profileController.users.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                                profileController.users[index].name.toString()),
                            subtitle: Text(profileController.users[index].email
                                .toString()),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    alertBox(context, "Edit User", () {
                                      Get.back();
                                      profileController.updateUser(
                                          profileController.users[index].id
                                              .toString(),
                                          nameController.text,
                                          emailController.text);
                                    });
                                  },
                                  icon: Icon(Icons.edit),
                                ),
                                IconButton(
                                    onPressed: () {
                                      profileController.deleteUser(
                                          profileController.users[index].id
                                              .toString());
                                    },
                                    icon: Icon(Icons.delete))
                              ],
                            ),
                          );
                        }),
                  )
                ],
              );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          alertBox(context, "Add User", () {
            Get.back();

            profileController.addUser(DateTime.now().toString(),
                nameController.text, emailController.text);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void alertBox(BuildContext context, String title, Function() onPressed) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                Row(children: [
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Cancel")),
                  TextButton(onPressed: onPressed, child: Text("Confirm"))
                ])
              ],
            ),
          );
        });
  }
}
