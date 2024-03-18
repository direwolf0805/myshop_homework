import 'package:flutter/material.dart';

class ChilangarAdminScreen extends StatelessWidget {
  const ChilangarAdminScreen({super.key});
  static final id = "chilangar-admin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Admin VCHD-4"),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.teal.shade400,
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.question_mark,
                color: Colors.yellow,
                size: 25,
              ),
              textColor: Colors.white,
              title: Text(
                "TEST QO'SHISH",
                ),
            ),
          ),
          Card(
            color: Colors.teal.shade400,
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.restore_outlined,
                color: Colors.yellow,
                size: 25,
              ),
              textColor: Colors.white,
              title: Text(
                "TEST NATIJALARINI KO'RISH",
                ),
            ),
          ),

          Card(
            color: Colors.teal.shade400,
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.book,
                color: Colors.yellow,
                size: 25,
              ),
              textColor: Colors.white,
              title: Text(
                "YO'RIQNOMA QO'SHISH",
                ),
            ),
          ),
        ],
      ),
    );
  }
}
