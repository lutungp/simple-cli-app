import 'package:flutter/cupertino.dart';

class ItemNav extends StatelessWidget {
  const ItemNav({
    Key? key,
    required this.status,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 25,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: (status == true) ? Color(0xFFE52D27) : Color(0xFF747D8C),
          ),
        )
      ],
    );
  }
}
