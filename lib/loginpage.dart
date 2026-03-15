import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                enabledBorder: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 30),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 70),

            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  print(emailController.text);
                  print(passwordController.text);
                },
                child: Text("Login", style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
