import 'package:flutter/material.dart';
import 'database/userdb.dart';

class UpdateUserScreen extends StatefulWidget {
  final int userId;
  final String userName;
  final String phoneNumber;
  final String job;

  const UpdateUserScreen({
    super.key,
    required this.userId,
    required this.userName,
    required this.phoneNumber,
    required this.job,
  });

  @override
  State<UpdateUserScreen> createState() => _UpdateUserScreenState();
}

class _UpdateUserScreenState extends State<UpdateUserScreen> {
  final Userdb obj = Userdb();

  late TextEditingController userNameController;
  late TextEditingController userNumberController;
  late TextEditingController userJobController;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController(text: widget.userName);
    userNumberController = TextEditingController(text: widget.phoneNumber);
    userJobController = TextEditingController(text: widget.job);
  }

  @override
  void dispose() {
    userNameController.dispose();
    userNumberController.dispose();
    userJobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 90),
            const Text(
              "User Update",
              style: TextStyle(fontSize: 40, color: Colors.black45),
            ),
            const Text("UPDATE YOUR DATA"),
            const SizedBox(height: 40),

            TextFormField(
              controller: userNameController,
              decoration: InputDecoration(
                labelText: "User Name",
                prefixIcon: const Icon(Icons.person, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: userNumberController,
              decoration: InputDecoration(
                labelText: "Phone number",
                prefixIcon: const Icon(Icons.numbers, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: userJobController,
              decoration: InputDecoration(
                labelText: "User Job",
                prefixIcon: const Icon(Icons.work, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                ),
                onPressed: () async {
                  await obj.updateData(
                    userId: widget.userId,
                    userName: userNameController.text,
                    userPhone: userNumberController.text,
                    userJob: userJobController.text,
                  );
                  Navigator.pop(context);
                },
                child: const Text(
                  "Update Data",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}