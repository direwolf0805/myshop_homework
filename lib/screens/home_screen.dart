import 'package:flutter/material.dart';
import 'package:myshop_homework/models/product.dart';
import 'package:myshop_homework/screens/login_screen.dart';
import 'package:myshop_homework/screens/seh_tarkibi.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static final id = 'home-screen';

  @override
  Widget build(BuildContext context) {
    final sehData = Provider.of<Sehs>(context);
    final sehlar = sehData.list;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text(
          "Smart VChD-4",
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
                onTap: () {
                  Navigator.of(context).pushNamed(LoginScreen.id);
                },
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
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(SehTarkibi.id);
        },
        child: GridView.builder(
          
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            
            
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 3 / 2,
              crossAxisCount: 1),
          itemBuilder: (context, index) {
            return GridTile(
                child:  Container(
                  decoration:  BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.teal.withOpacity(0.7),
                        blurRadius: 3,
                        spreadRadius: 4,
                        // offset: Offset(0, 8),
                        blurStyle: BlurStyle.normal,),
                  ], borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                  child: Container(
                    padding: EdgeInsets.only(top: 30, bottom: 55),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                header: Text(
                  
                  "Qo'qon Vagon Deposi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    
                  ),
                ),
                footer: GridTileBar(
                  leading: Icon(Icons.construction, size: 30,),
                  title: Text(sehlar[index].title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.black54,
                ),
                );
          },
          itemCount: sehlar.length,
          
        ),
      ),
    );
  }
}
