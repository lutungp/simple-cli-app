import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusCard extends StatelessWidget {
  const StatusCard(
      {Key? key, required this.title, required this.data, required this.satuan})
      : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: data,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEC2028),
                  ),
                  children: [
                    TextSpan(
                        text: " $satuan",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF747D8C),
                        ))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
