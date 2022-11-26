import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal & Vertical ListView"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Card $index",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.green[700],
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
