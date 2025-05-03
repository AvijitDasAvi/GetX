import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
          Get.snackbar("Avijit Das", "I am your boss");
          //use all widgets for more design
        },
      ),
      appBar: AppBar(title: Text("GetX")),
      body: Column(
        children: [
          ListTile(
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
          SizedBox(height: 10.0),
          ListTile(
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
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("Dark Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                      SizedBox(height: 5.0),
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Light Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
