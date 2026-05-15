import 'package:flutter/material.dart';
import 'package:login_ui/update_user_screen.dart';
import 'database/userdb.dart';

class DbTaskScreen extends StatefulWidget {
  const DbTaskScreen({super.key});

  @override
  State<DbTaskScreen> createState() => _DbTaskScreenState();
}

class _DbTaskScreenState extends State<DbTaskScreen> {
  final Userdb db = Userdb();
  List data = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    data = await db.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: const Text("Database Task")),

      body: data.isEmpty
          ? const Center(child: Text("No Data"))
          : ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];

          return Card(
            color: Colors.white54,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name: ${item["user_name"]}"),
                      Text("Job: ${item["user_job"]}"),
                      Text("Phone: ${item["user_phone_number"]}"),
                    ],
                  ),

                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UpdateUserScreen(
                                userName: item["user_name"],
                                job: item["user_job"],
                                phoneNumber: item["user_phone_number"],
                                userId: item["user_id"],
                              ),
                            ),
                          );
                          loadData();
                        },
                        child: const Text(
                          "Update",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 5),
                      OutlinedButton(
                        onPressed: () async {
                          await db.deleteUser(id: item["user_id"]);
                          loadData();
                        },
                        child: const Text(
                          "Delete",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: showInsertDialog,
        backgroundColor: Colors.grey[200],
        child: const Icon(Icons.add),
      ),
    );
  }

  void showInsertDialog() {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final jobController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Insert User"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Name"),
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: "Phone"),
              ),
              TextField(
                controller: jobController,
                decoration: const InputDecoration(labelText: "Job"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (nameController.text.trim().isEmpty ||
                    phoneController.text.trim().isEmpty ||
                    jobController.text.trim().isEmpty) return;

                await db.insertData(
                  userName: nameController.text,
                  phoneNumber: phoneController.text,
                  userJob: jobController.text,
                );

                Navigator.pop(context);
                loadData();
              },
              child: const Text(
                "Insert",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        );
      },
    );
  }
}