import 'package:flutter/material.dart';
import 'package:pokemon_app/screens/homescreen.dart';

class LoginScreen extends StatelessWidget {
   
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController usernameText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pokemon App"),),
      body: Stack(children: [
        const Text("Username"),
        TextFormField(
          controller: usernameText,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("password"),
        TextFormField(
          controller: passwordText,
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          child: const Text("Login"),
          onTap: () {
            if(usernameText.text.compareTo("admin") == 0 && passwordText.text.compareTo("admin") == 0){
              Navigator.push(context, MaterialPageRoute(builder: (context)  => const HomeScreen()));
            }else{
              showDialog(
                context: context, 
                builder: ((context) => const AlertDialog(content: Text("incorrect user or password"),)));
            }     
          },
        )
      ],)
    );
  }
}