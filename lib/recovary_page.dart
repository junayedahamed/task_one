import 'package:flutter/material.dart';
import 'package:shopping/color.dart';
import 'package:shopping/login_page.dart';

class RecovaryPage extends StatelessWidget {
  const RecovaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Recovary",
          style: TextStyle(
            color: primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  label: Text("Email"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.key,
                    size: 22,
                  ),
                  label: Text("New Password"),
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.key,
                    size: 22,
                  ),
                  label: Text("Confirm New Password"),
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Save All",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
