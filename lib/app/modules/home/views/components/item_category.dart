import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({Key? key, required this.icon, required this.title})
      : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          child: Image.asset(
            "assets/icons/$icon.png",
            fit: BoxFit.cover,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
