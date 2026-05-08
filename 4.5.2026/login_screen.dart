import 'package:flutter/material.dart';
import 'package:login_ui/Welcome%20Screen.dart';
import 'package:login_ui/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 40, color: Colors.black45),
              ),
            ),
            Text("login to your account "),
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Email", style: TextStyle(color: Colors.grey)),

                prefixIcon: Icon(Icons.email, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Password", style: TextStyle(color: Colors.grey)),

                prefixIcon: Icon(Icons.password, color: Colors.grey),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),obscureText: true,
            ),
            SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>WelcomeScreen()),(b){return false;});

                },
                child: Text("login", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("don't have account?"),
                TextButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                }, child: Text(
                  "sign up", style: TextStyle(color: Colors.blue[900]),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
