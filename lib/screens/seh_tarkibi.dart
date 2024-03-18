import 'package:flutter/material.dart';
import 'package:myshop_homework/screens/login_screen.dart';

class SehTarkibi extends StatelessWidget {
  const SehTarkibi({
    super.key,
  });
  static final id = 'seh-tarkibi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.teal,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Lavozim bo'yicha kirish", style: TextStyle(color: Colors.black, fontSize: 28),),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sex ustasi",
                  style: TextStyle(color: Colors.teal, fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Brigadir",
                  style: TextStyle(color: Colors.teal, fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                style: ButtonStyle(
                  overlayColor:MaterialStatePropertyAll(Colors.teal.withOpacity(0.3))
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreen.id);
                },
                child: Text(
                  "Chilangar",
                  style: TextStyle(color: Colors.teal, fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey)
                ),
                onPressed: () {},
                child: Text(
                  "Admin",
                  style: TextStyle(color: Colors.teal, fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
