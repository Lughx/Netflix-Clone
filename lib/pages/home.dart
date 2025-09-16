import 'package:clonenetflix/components/banner.dart';
import 'package:clonenetflix/components/item_image.dart';
import 'package:clonenetflix/components/item_rounded.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: <Widget>[
        MainBanner(),
        HorizontalList("Avances", ItemRounded(), 5),
        const SizedBox(
          height: 10,
        ),
        HorizontalList("Tendencias", ItemImage(), 10),
        const SizedBox(
          height: 10,
        ),
        HorizontalList("Nuevo", ItemImage(), 10),
        const SizedBox(
          height: 10,
        ),
        HorizontalList("Mi lista", ItemImage(), 10),
        const SizedBox(
          height: 10,
        ),
        HorizontalList("Avances", ItemImage(), 10),
        const SizedBox(
          height: 20,
        ),
      ]),
      bottomNavigationBar: inferiorNav(),
    );
  }
}

BottomNavigationBar inferiorNav() {
  return BottomNavigationBar(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    selectedFontSize: 12,
    unselectedFontSize: 12,
    unselectedItemColor: Colors.white54,
    type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
      // Text("Inicio", style: TextStyle(fontSize: 10)
      BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
      BottomNavigationBarItem(
          icon: Icon(Icons.library_music), label: "Proximamente"),
      BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward), label: "Descargas"),
      BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "Más")
    ],
  );
}

Widget HorizontalList(String title, Widget item, int amount) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      Container(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: amount,
          itemBuilder: (context, index) {
            return item;
          },
        ),
      ),
    ],
  );
}
