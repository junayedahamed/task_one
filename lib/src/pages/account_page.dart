import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  Uint8List? byte;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 7,
              left: 7,
              right: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: InkWell(
                  onTap: () async {
                    ImagePicker picker = ImagePicker();
                    final XFile? image = await picker.pickImage(
                      source: ImageSource.gallery,
                    );
                    if (image != null) {
                      byte = await image.readAsBytes();
                      print(byte!.length.toString());
                      setState(
                        () {},
                      );
                    }
                  },
                  child: byte == null
                      ? Icon(
                          Icons.account_circle,
                          size: 120,
                        )
                      : Image.memory(
                          byte!,
                          fit: BoxFit.cover,
                          height: 120,
                          width: 120,
                          // centerSlice: Rect.fromCircle(
                          //     center: Offset(50, 50), radius: 15),
                        ),
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name: mr.X",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Gender: M",
                    ),
                    Text(
                      "User description:",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,",
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
