import 'package:clonenetflix/components/top-navbar.dart';
import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[headerWidget(), infoSerie(), botonera()],
    );
  }
}

Widget headerWidget() {
  return Stack(
    children: <Widget>[
      Image.network(
        "https://futoikarasu.files.wordpress.com/2023/02/sora-yori-mo-tooi-basho-wallpaper-1.jpg",
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[Colors.black38, Colors.black],
                begin: Alignment.center,
                end: Alignment.bottomCenter)),
      ),
      SafeArea(child: TopNavBar()),
    ],
  );
}

Widget infoSerie() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Anime",
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
      SizedBox(width: 6),
      Icon(
        Icons.fiber_manual_record,
        color: Colors.red,
        size: 5,
      ),
      SizedBox(width: 6),
      Text(
        "Adventure",
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
      SizedBox(width: 6),
      Icon(
        Icons.fiber_manual_record,
        color: Colors.red,
        size: 5,
      ),
      SizedBox(width: 6),
      Text(
        "Slice of life",
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
      SizedBox(width: 6),
      Icon(
        Icons.fiber_manual_record,
        color: Colors.red,
        size: 5,
      ),
      SizedBox(width: 6),
      Text(
        "Drama",
        style: TextStyle(color: Colors.white, fontSize: 10),
      )
    ],
  );
}

Widget botonera() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Column(
          children: [
            Icon(
              Icons.check,
              color: Colors.white,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Mi lista",
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),
        TextButton.icon(
          onPressed: () {},
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.black,
          ),
          label: const Text(
            "Reproducir",
            style: TextStyle(color: Colors.black),
          ),
        ),
        const Column(
          children: [
            Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Información",
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),
      ],
    ),
  );
}
