import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class mailPage extends StatefulWidget {
  const mailPage({super.key});

  @override
  State<mailPage> createState() => _mailPageState();
}

class _mailPageState extends State<mailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.chevron_back,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 35,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Kotak Masuk",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontFamily: 'poppins'),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Text("Inbox"),
      ),
    );
  }
}
