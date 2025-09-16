import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          "assets/img/logo.png",
          width: 30,
        ),
        Text(
          "Programas",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Text(
          "Peliculas",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Text(
          "Mi lista",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
