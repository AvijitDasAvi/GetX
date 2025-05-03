import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_state_management/pages/screen_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "",
            "",
            titleText: Center(
              child: Text(
                "Avijit Das",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            messageText: Center(child: Text("I am your boss")),
          );
          //use all widgets for more design
        },
        child: Icon(Icons.person),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(title: Text("GetX")),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.man),
                title: Text("Avijit Das"),
                subtitle: Text("Dialog alert for Avijit"),
                trailing: Icon(Icons.add),
                onTap: () {
                  Get.defaultDialog(
                    title: "Delete",
                    middleText: "Are you sure?",
                    confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Yes"),
                    ),
                    cancel: TextButton(onPressed: () {}, child: Text("No")),
                  );
                },
              ),
            ),
            SizedBox(height: 5.0),
            Card(
              child: ListTile(
                leading: Icon(Icons.change_circle),
                title: Text("Theme"),
                subtitle: Text("This is the theme bottomsheet"),
                trailing: Icon(Icons.add),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Card(
                            child: ListTile(
                              leading: Icon(Icons.dark_mode),
                              title: Text("Dark Theme"),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Card(
                            child: ListTile(
                              leading: Icon(Icons.light_mode),
                              title: Text("Light Theme"),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                Get.to(ScreenTwo());
              },
              child: Container(
                padding: EdgeInsets.all(5.0),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        "Go to second screen",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
