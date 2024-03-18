import 'package:flutter/material.dart';
import 'package:myshop_homework/screens/chilangar_amdin_acreen.dart';
import 'package:myshop_homework/screens/chilangar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static final id = "login-screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

final TextEditingController _loginController = TextEditingController();
final TextEditingController _parolController = TextEditingController();
String _errorxabar = '';

void _login(){
  String login = _loginController.text;
  String parol =_parolController.text;

  if( login.isNotEmpty && parol.isNotEmpty){
    setState(() {
      Navigator.of(context).pushNamed(ChilangarScreen.id);
    });
    
  }if(
    login == 'admin689' && parol == 'vchd4689' 
  ){
setState(() {
  Navigator.of(context).pushNamed(ChilangarAdminScreen.id);
});
  }
  else{
    setState(() {
      _errorxabar = 'Login yoki parol xato !';
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff00467f), Color(0xffa5cc82)],
                stops: [0, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 22),
              child: Text(
                "Hush\nKelibsiz !",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // oq fon login va password
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    40,
                  ),
                  topRight: Radius.circular(
                    40,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 120),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 5,),
                      TextField(
                        controller: _loginController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.check_sharp,
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.teal,
                                width: 2,
                              ),
                            ),
                            label: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        controller: _parolController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.teal,
                                width: 2,
                              ),
                            ),
                            label: Text(
                              "Parol",
                              style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                      Text(_errorxabar,style: TextStyle(color: Colors.red),),
                      SizedBox(
                        height: 15,
                      ),
                      // parolni unutdingizmi
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Parolni unutdingizmi?",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      //kirish tugmasi
                      GestureDetector(
                        onTap: _login,
                        child: Container(
                          width: 300,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: [Color(0xff00467f), Color(0xffa5cc82)],
                              stops: [0, 1],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Kirish",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                  
                      // royxatdan otishga yo'l
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          children: [
                            Text(
                              "Profilingiz yo'qmi?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Ro'yxatdan o'tish",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
