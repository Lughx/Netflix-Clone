import 'package:flutter/material.dart';

class ItemRounded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(110)),
              child: ClipOval(
                child: Image.network(
                  "https://static.wikia.nocookie.net/yuripedia/images/a/a7/Lycoris-Recoil-teaser-visual-1.jpg/revision/latest?cb=20220927060753",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
