import 'package:flutter/material.dart';
import 'package:login_ui/Welcome%20Screen.dart';
import 'package:login_ui/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Register", style: TextStyle(fontSize: 30))),
            Text("create your account", style: TextStyle(fontSize: 15)),
            SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                label: Text("UserName", style: TextStyle(color: Colors.grey)),

                prefixIcon: Icon(Icons.person_2_outlined, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Email", style: TextStyle(color: Colors.grey)),

                prefixIcon: Icon(Icons.mail_outline, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Password", style: TextStyle(color: Colors.grey)),

                prefixIcon: Icon(Icons.password, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  "Confirm Password",
                  style: TextStyle(color: Colors.grey),
                ),

                prefixIcon: Icon(Icons.password, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                ),
                onPressed: () {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()),(b){return false;});},
                child: Text("Register", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () {Navigator.pop(context);},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
