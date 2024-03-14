import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text(
          "VChD-4 TEST",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(100, 197, 2296, 195),
                Color.fromARGB(100, 196, 161, 196),
                Color.fromARGB(100, 223, 224, 224),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Image.asset("assets/images/logo.png"),
                height: 100,
                // color: Colors.amber,
                // decoration: BoxDecoration(),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                titleAlignment: ListTileTitleAlignment.center,
                titleTextStyle: TextStyle(fontSize: 17, color: Colors.black),
                tileColor: Colors.grey.shade300,
                leading: Icon(
                  Icons.home,
                  size: 27,
                ),
                title: Text(
                  "Bosh sahifa",
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                titleAlignment: ListTileTitleAlignment.center,
                titleTextStyle: TextStyle(fontSize: 17, color: Colors.black),
                tileColor: Colors.grey.shade300,
                leading: Icon(
                  Icons.category,
                  size: 27,
                ),
                title: Text(
                  "Bo'limlar",
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                titleAlignment: ListTileTitleAlignment.center,
                titleTextStyle: TextStyle(fontSize: 17, color: Colors.black),
                tileColor: Colors.grey.shade300,
                leading: Icon(
                  Icons.login,
                  size: 27,
                ),
                title: Text(
                  "Kirish",
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                titleAlignment: ListTileTitleAlignment.center,
                titleTextStyle: TextStyle(fontSize: 17, color: Colors.black),
                tileColor: Colors.grey.shade300,
                leading: Icon(
                  Icons.person_2,
                  size: 27,
                ),
                title: Text(
                  "Ro'yxatdan o'tish",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
