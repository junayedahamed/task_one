import 'package:flutter/material.dart';
import 'package:shopping/src/color/color.dart';
import 'package:shopping/src/account%20recovary/verfy_code_page.dart';

class ForgotPassworsPage extends StatelessWidget {
  const ForgotPassworsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: Text(
        //   // "Recovary",
        //   style: TextStyle(
        //     color: primaryColor,
        //   ),
        // ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 220,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffix: Icon(
                    Icons.clear,
                    color: primaryColor,
                  ),
                  label: Text(
                    "Enter email",
                  ),
                  hintText: "example@gmail.com",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => VerfyCodePage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  height: 40,
                  width: 250,
                  child: Center(
                    child: Text(
                      "Send Code",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
